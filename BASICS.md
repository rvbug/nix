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
```nix
  {pkgs}: pkgs.htop
 
```
- Data types  : Attributes are key-value pair, List are stored in `[ ]` and sets in `{ }`, Strings in either `"` or `'`
```nix
  myAttributes = {
    name: "jd"
    city: "ny"
  }
```

- Functions   : declare using `name = expr` and calling by `name args` 



# Tutorials

- /nix/store/ - contains all softwares. Hash-filename.drv
- /etc/nixos - Contains 2 config files config.nix and hardware-config.nix
- `sudo nixos-rebuild switch` - For rebuilding after changing the config files 
- `nix-shell -p git neovim lolcat` - p is package. Stored in /nix/store as .drv file
- `nix-shell -p cowsay --run cowsay nix` - runing directly. Run will drop you to the shell commands

- The above may give new version in every machine so to reproduce the exact version - check the command below  
  `nix-shell -p git --run "git --version --pure -I nixpkgs=https://github.com/NixOS/nixpkgs/archive/hash.tar.gz`  
  pure - discards most of the env variables set in your system. So the git provided by nix will be installed.
  I - To determine the source of of package

- Freeing up space by using `nix-collect-garbage`
   
- Dependencies - if you want to a package which has dependencies then one such example of using bash script
```bash
#!/usr/bin/env nix-shell
#! nix-shell -i bash --pure
#! nix-shell -p bash curl jq
#! nix-shell -I nixpkgs=https://github.com/NixOS/nixpkgs/archive/hash.tar.gz
curl https://github.com/NixOS/nixpkgs/xyxpackage | xml2json | jq

```

- Channels - Default way of managing packages on your system. Exact version stored outside of the config files

## Flakes 
Similar to channels but stores the config files inside the config files. Uses flakes.log like a time machine.    
To setup permanently : `configuration.nix` add ` nix.settings.experimental-features = [ "nix-command" "flakes" ];`  

Download `dotfiles` repo. Create a folder inside this `nix`. Create a file called `flakes.nix`


```nix
description : "";

# mention the git repo
input : {};

# tells what to do with these inputs
output : {};

```
