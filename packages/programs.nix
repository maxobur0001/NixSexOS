{config, pkgs, lib, ...}: {
  programs.niri.enable = true;
  programs.xwayland.enable = true;
  programs.zsh.enable = true;
  programs.git.enable = true;
  programs.steam.enable = true;
  # programs.nixvim.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    wget
    home-manager
    brightnessctl
    swaybg
    bluez
    grim
    slurp
    wl-clipboard
    pulseaudio
    libnotify
    playerctl
    discord
    eza
    fastfetch
    xwayland-satellite
  ];
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowInsecurePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "broadcom-sta"
    ];
}
