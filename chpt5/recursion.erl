-module(recursion).
-export([duplicate/2, zip/2, quicksort/1]).

duplicate(N,Term) -> tail_duplicate(N,Term,[]).

tail_duplicate(0,_,Acc) -> Acc;
tail_duplicate(N, Term, Acc) when N > 0 -> tail_duplicate(N-1, Term, [Term|Acc]).

zip(L1,L2)-> lists:reverse(tail_zip(L1,L2,[])).
tail_zip([], [],Acc) -> Acc;
tail_zip(_, [],Acc) -> Acc;
tail_zip([], _,Acc) -> Acc;
tail_zip([X|Xs], [Y|Ys], Acc) -> tail_zip(Xs, Ys,[{X,Y}|Acc]).

quicksort([]) -> [];
quicksort([Pivot|Rest]) ->
    {Smaller, Larger} = partition(Pivot, Rest, [], []),
    quicksort(Smaller)++[Pivot]++quicksort(Larger).
partition(_,[],Smaller, Larger) -> {Smaller, Larger};
partition(Pivot, [H|T], Smaller, Larger) ->
    if H =< Pivot -> partition(Pivot, T, [H|Smaller], Larger);
    H > Pivot -> partition(Pivot, T, Smaller,[H|Larger])
end.