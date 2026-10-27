% Buño, James Patrick T.
% 2ECE-A
% 10/27/2026

%% A. TRANSPOSE OPERATIONS

% Define real matrix R and complex matrix Z

R = [ 5, -2, 0, 7; 1, 3, -4, 2; 6, 0, 8, -1];

Z = [ 2 + 3i, -1 + 4i, 5 - 2i; -3 + i, 6, 2 + 5i];

% Output for real matrix R
% Real Matrix R
disp('Real Matrix R')
R

% transpose(A)
disp('1. transpose(R):')
transpose(R)

% A'
disp('2. R'':')
R'

% A.'
disp('3. R.'':')
R.'

% Output for complex matrix Z.
% Complex Matrix Z
disp('Complex Matrix Z')
Z

% transpose(A)
disp('1. transpose(Z):')
transpose(Z)

% A'
disp('2. Z'':')
Z'

% A.'
disp('3. z.'':')
Z.'

% Answer to the following questions :

% a. Which operations give identical results for the real matrix R?
% Every operations give identical results for the real matrix R, since R contains only real entries.

% b. Which two operations give identical results for the complex matrix Z?
% The transpose(Z) and Z.' (dot-transpose) give identical results for the complex matrix Z. Since, both perform the standard matrix transposition without conjugating the complex elements.

% c. What additional operation is performed by the apostrophe operator when the matrix contains complex entries?
% In addition to transposing, the apostrophe operator also flips the sign of the imaginary part of every complex number called a complex-conjugate transpose.



%% B. TWO METHODS FOR A LINEAR SYSTEM

% Define coefficient matrix A and right-hand-side vector b

A = [ 2 -1  3  2; 1  4 -2  1; 3  2  1 -1; -2  3  4  2];

b = [16; -7; 6; 7];

% Compute determinant of coefficient matrix A

det_A = det(A);

% 1. Inverse Method (x_inv)

x_inv = inv(A) * b;

% 2. Cramer's Rule (x_cramer without conditionals or loops)

A1 = [ b, A(:, 2:4)];
A2 = [ A(:, 1), b, A(:, 3:4)];
A3 = [ A(:, 1:2), b, A(:, 4)];
A4 = [ A(:, 1:3), b];

x_cramer = [ det(A1); det(A2); det(A3); det(A4)] / det_A;

% Numerical Checks

% Difference between the two solutions
norm_diff = norm(x_inv - x_cramer);

% Residual error of the solution
norm_residual = norm(A * x_inv - b);

% Required Results and Checks

% Results Output
disp('Determinant det(A):');
det_A

disp('Solution vector x_inv (Inverse Method):');
x_inv

disp('Solution vector x_cramer (Cramer''s Rule):');
x_cramer

% Numerical checks output
disp('Numerical Check 1: norm(x_inv - x_cramer):');
norm_diff

disp('Numerical Check 2: norm(A*x_inv - b):');
norm_residual