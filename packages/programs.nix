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
    blobdrop
    btop
    mpv
    kew
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
    yazi
    nemo
    obs-studio
  ];
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowInsecurePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "broadcom-sta"
    ];
}
