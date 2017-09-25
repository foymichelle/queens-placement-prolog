% To get solutions:
% findSolutions([1/A,2/B,3/C,4/D,5/E,6/F,7/G,8/H]).

doNotAttack(_, []).
doNotAttack(X/Y,[X1/Y1 | Others]) :- Y =\= Y1,
                                     Y1 - Y =\= X1 - X,
                                     Y1 - Y =\= X - X1,
                                     doNotAttack(X/Y, Others).

findSolutions([]).
findSolutions([X/Y | Others]) :- findSolutions(Others),
                                 member(Y, [1, 2, 3, 4, 5, 6, 7, 8]),
                                 doNotAttack(X/Y, Others).
