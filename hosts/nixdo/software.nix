{ config, pkgs, ... }: {
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    neovim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    curl
    tmux
    git
    fd
    cloud-utils
    gnumake
    exa
    ripgrep
    du-dust
    fish
    starship
    tree
    tailscale
  ];

  # Install Docker
  virtualisation.docker.enable = true;

}
