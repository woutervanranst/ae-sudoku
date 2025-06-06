:- use_module(library(clpfd)).

sudoku(Puzzle, Solution) :-
    Puzzle = Solution,
    length(Puzzle, 9),
    maplist(same_length(Puzzle), Puzzle),
    append(Puzzle, Vs), Vs ins 1..9,
    maplist(all_distinct, Puzzle),
    transpose(Puzzle, Columns),
    maplist(all_distinct, Columns),
    Puzzle = [A,B,C,D,E,F,G,H,I],
    blocks(A,B,C), blocks(D,E,F), blocks(G,H,I),
    maplist(label, Puzzle).

blocks([], [], []).
blocks([A,B,C|Bs1], [D,E,F|Bs2], [G,H,I|Bs3]) :-
    all_distinct([A,B,C,D,E,F,G,H,I]),
    blocks(Bs1, Bs2, Bs3).

print_sudoku([]) :- !.
print_sudoku([Row|Rows]) :-
    writeln(Row),
    print_sudoku(Rows).

example([
    [_,4,_, _,5,1, _,_,9],
    [_,_,1, 3,_,_, _,4,2],
    [3,7,_, 6,_,_, 8,5,_],
    [_,_,_, _,_,5, _,_,3],
    [2,_,5, _,9,_, _,6,_],
    [_,_,_, 4,6,_, _,_,_],
    [5,_,_, 1,8,_, _,3,_],
    [_,_,4, 9,_,_, 5,2,_],
    [9,_,_, _,_,6, 1,_,_]
]).

solve_example :-
    example(Puzzle),
    sudoku(Puzzle, Solution),
    print_sudoku(Solution).

