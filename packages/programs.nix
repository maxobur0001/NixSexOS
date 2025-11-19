{pkgs, lib, ...}: {
  programs.niri.enable = true;
  programs.xwayland.enable = true;
  programs.zsh.enable = true;
  programs.git.enable = true;
  programs.steam.enable = true;

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
    mpv
    kew
    xdg-desktop-portal-gnome
    audacity
    blender
    obsidian
    imagemagick
    mindustry
    libreoffice
    bluetui
    thunderbird
    telegram-desktop
    godot
  ];
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowInsecurePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "broadcom-sta"
    ];
}
