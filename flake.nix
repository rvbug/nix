{
  description = "My Dev Environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Add inputs for your dotfile repositories
    nvim-config = {
      url = "github:yourusername/nvim-config";
      flake = false;  # Just fetch the source
    };

    tmux-config = {
      url = "github:yourusername/tmux-config";
      flake = false;
    };

    i3-config = {
      url = "github:yourusername/i3-config";
      flake = false;
    };

  };

  outputs = { self, nixpkgs, home-manager, nvim-config, tmux-config, i3-config }:
    let
      # This needs to be adjusted based on your system
      system = "x86_64-linux";  
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      homeConfigurations.mydevenv = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ 
          ./home.nix 
          {
            # Pass the inputs to home-manager configuration
            home.file = {
              ".config/nvim".source = nvim-config;
              ".config/tmux".source = tmux-config;
              ".config/i3".source = i3-config;
            };
          }
        ];
      };
    };
}
