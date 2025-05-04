-module(functions).
-compile(export_all).
head([H|_]) -> H.
second([_,X|_]) -> X.

valid_time({Date={Y,M,D}, Time = {H, Min, S}}) ->
    io:format("The date ~p tuple says, today is ~p/~p/~p.~n",[Date,Y,M,D]),
    io:format("The time ~p tuple says, the time is ~p:~p:~p.~n",[Time,H,Min,S]);
valid_time(_) ->
    io:format("You are feeding the wrong data!~n").