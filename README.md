
<p align="center">
  <img width=80px src="https://img.shields.io/badge/NIX-5277C3.svg?style=for-the-badge&logo=NixOS&logoColor=black">
</p>




# Templates

- Terminal colors
- Background color for terminal
- Terminal font
- List of softwares to be installed based on the OS
- List of programming languages
- List of tools - fd, ripgrep, tree-sitter etc



Supports following OS
- Mac
- Ubuntu
- Fedora
- Arch
- Nix

Folder Structure

```markdown
nix-config/
│
├── flake.nix           # Main Nix flake configuration
├── flake.lock          # Locked dependencies
│
├── home.nix            # Home Manager configuration
│
├── hosts/              # Machine-specific configurations
│   ├── macbook/
│   │   └── default.nix
│   └── workstation/
│       └── default.nix
│
├── modules/            # Reusable configuration modules
│   ├── neovim/
│   │   ├── default.nix
│   │   └── plugins.nix
│   ├── starship.nix
│   ├── wezterm.nix
│   └── git.nix
│
├── dotfiles/           # Actual dotfile configurations
│   ├── nvim/
│   │   ├── init.lua
│   │   └── lua/
│   ├── starship.toml
│   └── wezterm.lua
│
└── scripts/            # Utility scripts
    ├── setup.sh
    └── update.sh
```


# References
https://mynixos.com/  
https://github.com/nix-community/awesome-nix?tab=readme-ov-file#rust    
https://ianthehenry.com/posts/how-to-learn-nix/prior-knowledge/  

