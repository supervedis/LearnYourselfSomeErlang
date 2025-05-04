-module(what_the_if).

-compile(export_all).

%%This function has no default clause when all the other if guards have failed.
%%This is not how to write proper guards.
heh_fine() ->
    if 1 =:= 1 ->
           works
    end,
    if 1 =:= 2; 1 =:= 1 ->
           works
    end,
    if 1 =:= 2, 1 =:= 1 ->
           fails
    end.

uh_oh(N) ->
    if N =:= 2 ->
           might_succeed;
       true ->
           always_does %%This is erlang's if's 'else'
    end.
