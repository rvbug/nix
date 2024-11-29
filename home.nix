{ config, pkgs, ... }:

{
  home = {
    username = "yourusername";
    homeDirectory = "/home/yourusername";
    stateVersion = "23.11";

    packages = with pkgs; [
      # Development tools
      git
      neovim
      wezterm
      starship
      curl
      tmux
      rofi
      dunst
      feh

      # Language-specific tools
      python3
      rustup
      nodejs
      rust-analyzer
      
      # Utility tools
      ripgrep
      fd
      npm
      yarn
      lazygit
      tree
      tree-sitter
    ];
  };

  # Neovim configuration from GitHub
  programs.neovim = {
    enable = true;
    extraConfig = ''
      lua << EOF
      -- Load configuration from GitHub repo
      vim.cmd('source ~/.config/nvim/init.lua')
      EOF
    '';
  };

  # Starship prompt configuration
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      character = {
        success_symbol = "[➜](bold green)";
        error_symbol = "[➜](bold red)";
      };
    };
  };

  # WezTerm configuration
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      return {
        font = wezterm.font("JetBrains Mono"),
        color_scheme = "Dracula",
      }
    '';
  };

 # Tmux configuration
  programs.tmux = {
      enable = true;
      shell = "${pkgs.zsh}/bin/zsh";
      terminal = "screen-256color";
      plugins = with pkgs.tmuxPlugins; [
        resurrect
        continuum
        # Add your preferred tmux plugins
      ];
      extraConfig = ''
        source-file ${../dotfiles/tmux/tmux.conf}
      '';
    };

  # i3 configuration
  xsession.windowManager.i3 = {
      enable = true;
      config = {
        modifier = "Mod4";  # Windows key
        bars = [{
          position = "top";
          statusCommand = "${pkgs.i3status}/bin/i3status";
        }];
        keybindings = {
          "Mod4+Return" = "exec ${pkgs.wezterm}/bin/wezterm";
          "Mod4+Shift+q" = "kill";
          # Add more keybindings
        };
      };
      extraConfig = builtins.readFile ../dotfiles/i3/config;
    };


}
