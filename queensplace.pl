% This is a program for Queens Placement
findSolution([]).

findSolution([X/Y | Others]) :- findSolution(Others),
                                member(Y, [1, 2, 3, 4, 5, 6, 7, 8]),
                                doNotAttack(X/Y, Others), !.

doNotAttack(_, []).

doNotAttack(X/Y,[X1/Y1 | Others]) :- Y =\= Y1,
                                     Y1 - Y =\= X1 - X,
                                     Y1 - Y =\= X - X1,
                                     doNotAttack(X/Y, Others).
