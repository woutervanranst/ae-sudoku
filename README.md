# ae-sudoku

This repository contains a simple Sudoku solver written in Prolog using CLP(FD).

## Installing SWI-Prolog

On Debian-based systems you can install SWI-Prolog using `apt`:

```bash
sudo apt-get update
sudo apt-get install -y swi-prolog
```

After installation verify it works:

```bash
swipl --version
```

## Usage

1. Load the solver in the SWI-Prolog interpreter:

```bash
swipl sudoku.pl
```

2. Run `solve_example.` to solve the included example puzzle. You can define your own 9x9 puzzle as a list of lists and call `sudoku(Puzzle, Solution).`

You can also solve the example directly from the command line:

```bash
swipl -q -t "['sudoku.pl'], solve_example, halt."
```

## Example Puzzle

```
[
    [_,4,_, _,5,1, _,_,9],
    [_,1,3, _,_,_, 4,_,2],
    [3,7,6, _,8,_, _,5,_],
    [_,_,_, _,_,5, _,_,3],
    [2,_,5, 9,_,_, _,6,_],
    [_,_,_, 4,6,_, _,_,_],
    [5,_,1, 8,_,_, _,3,_],
    [_,4,9, _,5,2, _,_,_],
    [9,_,_, _,6,1, _,_,_]
]).
```

### Solution

This puzzle has no valid solution. Running `solve_example.` fails to produce an
answer.
