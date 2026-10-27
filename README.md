# ECE 2112: Advanced Computer Programming and Algorithms

**Experiment 5: Introduction to MATLAB Programming** || **Programmed by:** Buño, James Patrick T.

This repository contains the MATLAB script solution for **Experiment 5**, demonstrating matrix creation, real and complex transpose operations, and the solution of linear equations.

---

## A. Transpose Operations Problem

Evaluating and comparing matrix transpose operators (`transpose(A)`, `A'`, and `A.'`) on both a real matrix and a complex matrix.

* **Technique Used:** Testing built-in functions versus operator shortcuts to distinguish standard non-conjugate transposition from complex-conjugate (Hermitian) transposition.
* **Key Concept:** Real matrix entries are unaffected by complex conjugation, whereas complex entries undergo imaginary sign negation under the apostrophe (`'`) operator.
* **Example:**

To define a complex matrix Z
Z = [2+3i, -1+4i, 5-2i; -3+i, 6, 2+5i];

A Non-conjugate transpose (preserves imaginary signs)
Z_transpose = Z.';  or transpose(Z)

A Complex-conjugate transpose (flips imaginary signs)
Z_hermitian = Z'; the 2+3i becomes 2-3i

```

---

## B. Linear System Solver Problem

Solving a linear equation system using two numerical methods: the Matrix Inverse Method and Cramer's Rule.

* **Technique Used:** Array slicing (`A(:, start:end)`) and horizontal array concatenation (`[left, center, right]`) to construct Cramer sub-matrices A1 through A4 directly
without using `for` loops or `if` conditional statements.
* **Numerical Checks:** Calculating (`norm(x_inv - x_cramer)` and `norm(A*x_inv - b)`) to verify solution consistency and residual error.
* **Example:**

Extract columns via slicing to construct Cramer sub-matrices:
A1 = [ b, A(:, 2:4) ];           Replaces column 1 with b
A2 = [ A(:, 1), b, A(:, 3:4) ];  Replaces column 2 with b
A3 = [ A(:, 1:2), b, A(:, 4) ];  Replaces column 3 with b
A4 = [ A(:, 1:3), b ];           Replaces column 4 with b

Vectorized solution via determinant ratios:
x_cramer = [ det(A1); det(A2); det(A3); det(A4) ] / det(A);

```

---

## 📥 Access the Script

To view the full code and executed outputs, open the MATLAB script file in this repository:

* **[Buno_PA5.m](https://www.google.com/search?q=./Buno_PA5.m)**
