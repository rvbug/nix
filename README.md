
<p align="center">
  <img width=80px src="https://img.shields.io/badge/NIX-5277C3.svg?style=for-the-badge&logo=NixOS&logoColor=black">
</p>


# Basics

### Declaritive vs Imperative Languages
Declarative Focuses defines the desired outcome withut specifiying the steps. Some examples are SQL, HTML, CSS, Regex, XML.
example - SQL query will extract the data without a need to specify the DB will take find the data

Imperative provides set of instructions to be executed. Examples include C, Rust, Python, etc

Most mordern programming languages usesd both . Example python has `map`, `filter` and `reduce` as declaritve ways to express data manipulation.


# Introduction
Nix uses delclartive approach to define system state. This helps to reproduce the exact state at any given point.
Isolation is achieved by creating env for each package. Caching helps to store package builds helps speed up package installation and updates.









Supports following OS
- Mac
- Ubuntu
- Fedora
- Arch
- Nix
