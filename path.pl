
vertex(a).
vertex(b).
vertex(c).
vertex(d).

edge(a,b).
edge(a,c).
edge(b,c).
edge(d,c).
edge(c,d).

path(A,B) :- A=B, vertex(A), vertex(B).
path(X,Y) :- edge(X,Z), path(Z,Y).