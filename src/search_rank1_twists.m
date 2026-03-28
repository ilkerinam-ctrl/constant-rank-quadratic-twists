///////////////////////////////////////////////////////////////////////////
// search_rank1_twists.m
//
// Search for rank-1 quadratic twists in residue classes d = d0 + 4N*k
///////////////////////////////////////////////////////////////////////////


// ======================= LOAD FILES =======================

load "../data/frey_table_clean.m";
load "utils.m";


// ======================= PARAMETERS =======================

SEARCH_BOUND := 40;


// ======================= MAIN LOOP =======================

PrintHeader("Search for rank-1 quadratic twists");

for entry in FreyTable do

    label := entry`label;
    twists := entry`twists;

    E := EllipticCurve(label);
    N := Conductor(E);
    M := 4*N;

    PrintHeader("Curve " cat label cat " (modulus 4N = " cat IntegerToString(M) cat ")");

    if #twists eq 0 then
        print "No starting representatives recorded for this curve.";
        print "";
        continue;
    end if;

    for d0 in twists do

        print "Starting d0 =", d0;

        found := [];

        for k in [0..SEARCH_BOUND] do

            d := d0 + M*k;

            if d ne 0 and IsSquarefreeInteger(d) then

                Ed := QuadraticTwist(E, d);
                r := SafeAnalyticRank(Ed);

                if r eq 1 then
                    Append(~found, d);
                end if;

            end if;

        end for;

        print "Rank-1 twists found:";
        print found;
        print "";

    end for;

end for;

PrintHeader("Search completed");
