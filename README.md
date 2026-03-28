# Quadratic Twists of Rank One via Frey’s Table and Waldspurger’s Theorem

This repository contains the Magma code accompanying the paper:

**Quadratic Twists of Rank One via Frey’s Table and Waldspurger’s Theorem**
Seungjae Lee and İlker İnam

---

## Authors

**Seungjae Lee**
Kyungpook National University
Institute for Mathematical Convergence
Daegu, South Korea
Email: [seungjae@knu.ac.kr](mailto:seungjae@knu.ac.kr)

**İlker İnam**
Bilecik Şeyh Edebali University
Department of Mathematics
11200 Bilecik, Turkey
Email: [ilker.inam@gmail.com](mailto:ilker.inam@gmail.com)
Email: [ilker.inam@bilecik.edu.tr](mailto:ilker.inam@bilecik.edu.tr)

---

## Description

This repository provides computational data and Magma scripts for studying quadratic twists of elliptic curves arising from Frey’s table.

The main goal is to identify squarefree integers ( d ) such that the quadratic twists ( E^{(d)} ) have analytic rank one, and to investigate their distribution within residue classes modulo ( 4N ).

---

## Repository Structure

* `data/` — cleaned Frey table used in the paper
* `src/` — Magma scripts for searching and verifying rank-one twists
* `output/` — generated computational results
* `paper/` — LaTeX source files of the manuscript

---

## Usage

Load the cleaned table:

```
load "data/frey_table_clean.m";
```

Run the search script:

```
load "src/search_rank1_twists.m";
```

---

## Notes

* Only squarefree twist parameters are considered
* Computations are performed within a finite search bound
* The behavior is **non-uniform**:

  * some curves admit many rank-one twists
  * some admit only a few
  * some (e.g. 49a1, 98a1) produce none within the tested range

---

## Remark

The computations illustrate that the existence of rank-one quadratic twists is closely related to the non-vanishing of Fourier coefficients appearing in Waldspurger’s formula.

---

## License

This project is released for academic and research use.
