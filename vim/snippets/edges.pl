edge(a,b).
edge(b,c).
edge(c,d).
edge(a,c).
edge(X,Y) :- edge(X,Z), edge(Z,Y)
