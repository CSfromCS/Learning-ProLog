
% Define some facts
likes(john, mary).
likes(john, pizza).
likes(jane, pizza).
likes(jane, sam).

% Define some rules
friend(X, Y) :- likes(X, Z), likes(Y, Z).
% premise is on the right, variable is on the left
% variable on the right not in left is for exist
% for all X, for all Y, if there exists Z such that X likes Z and Y likes Z, then 
