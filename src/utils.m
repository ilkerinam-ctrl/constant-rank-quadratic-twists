///////////////////////////////////////////////////////////////////////////
// utils.m
//
// Auxiliary routines for quadratic twist computations
///////////////////////////////////////////////////////////////////////////

procedure PrintSeparator()
    print "------------------------------------------------------------";
end procedure;

procedure PrintHeader(str)
    PrintSeparator();
    print str;
    PrintSeparator();
end procedure;

function IsSquarefreeInteger(n)
    if n eq 0 then
        return false;
    end if;

    fac := Factorization(Abs(n));
    for t in fac do
        if t[2] ge 2 then
            return false;
        end if;
    end for;

    return true;
end function;

function SafeAnalyticRank(E)
    try
        return AnalyticRank(E);
    catch e
        return -1;
    end try;
end function;

function SafeRootNumber(E)
    try
        return RootNumber(E);
    catch e
        return 0;
    end try;
end function;
