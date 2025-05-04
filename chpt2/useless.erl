-module(useless).
-export([greet_and_add_two/1]).

add(X,Y)->
    X+Y.

hello()->
    io:format("Hello, world~n").

greet_and_add_two(X)->
    hello(),
    add(X, 2).