///////////////////////////////////////////////////////////////////////////
// search_rank1_family.m
//
// Searches for additional square-free twists in the same congruence classes
// modulo 4N as the twists listed in Table 1.
//
// For each curve E and each listed d0, the script searches for integers
// d = d0 + 4N*k in a prescribed range and records those for which:
//
//   - d is square-free,
//   - d is nonzero,
//   - the quadratic twist E^(d) has analytic rank 1.
//
// Usage:
//   load "magma/search_rank1_family.m";
///////////////////////////////////////////////////////////////////////////

load "magma/frey_table_data.m";
load "magma/utilities.m";

SEARCH_BOUND := 40;   // number of steps k to test for each d0

PrintHeader("Search for additional rank-1 twists");

for entry in FreyTable do
    label := entry`label;
    twists := entry`twists;

    E := EllipticCurve(label);
    N := Conductor(E);
    modulus := 4 * N;

    PrintHeader("Curve " cat label cat " with modulus " cat IntegerToString(modulus));

    for d0 in twists do
        print "Starting twist d0 =", d0;
        found := [];

        for k in [0..SEARCH_BOUND] do
            d := d0 + modulus*k;

            if d ne 0 and IsSquarefree(d) then
                Ed := QuadraticTwist(E, d);
                r := SafeAnalyticRank(Ed);

                if Type(r) eq RngIntElt and r eq 1 then
                    Append(~found, d);
                end if;
            end if;
        end for;

        print "Rank-1 twists found in the progression d = d0 + 4N*k:";
        print found;
        print "";
    end for;
end for;

PrintHeader("Search completed");
