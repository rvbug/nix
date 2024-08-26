
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

# Components
- NixOS - A Linux distribution which used Nix as it's package manager  
- Nix - Package Manager  
- Nix Shell - Command line tool to create isolated enviornment without installing the OS   
- Flakes - Helps define entire system configuration in a single file   
- Home Manager - Helps manage your home directory , dotfiles and configure your shell   

# Nix Syntax
- Expressions : Everything is an expression including assignments and function definitions
- Data types  : Attributes are key-value pair, List are stored in `[ ]` and sets in `{ }`, Strings in either `"` or `'`
- Functions   : declare using `name = expr` and calling by `name args` 
```nix
  

```








Supports following OS
- Mac
- Ubuntu
- Fedora
- Arch
- Nix
