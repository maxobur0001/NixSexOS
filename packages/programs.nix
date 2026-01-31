{pkgs, pkgs-old, lib, ...}: {
  programs.xwayland.enable = true;
  programs.niri = {
    enable = true;
    package = pkgs.niri;
  };
  programs.zsh.enable = true;
  programs.git.enable = true;
  programs.gamescope.enable = true;
  programs.steam = {
    enable = true;
    fontPackages = with pkgs; [
      noto-fonts
      wqy_zenhei
    ];
  };
  programs.appimage.enable = true;
  programs.adb.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    wget
    home-manager
    brightnessctl
    pulseaudio
    libnotify
    wl-clipboard
    playerctl
    swaybg
    grim
    slurp
    discord
    eza
    xwayland-satellite
    blobdrop
    btop
    mpv
    kew
    audacity
    obsidian
    imagemagick
    libreoffice
    bluetui
    thunderbird
    telegram-desktop
    nautilus
    zip
    p7zip
    unzip
    unrar
    rustup
    gamemode
    gnome-calculator
    gcc
    qbittorrent
    steamcmd
    gdb
    ffmpeg
    mpvpaper
    blender
    lua
    gimp
    feh
    vtfedit
    wine
    winetricks
    wine64
    stylua
  ];

  fonts.packages = with pkgs; [
    noto-fonts
  ];

  fonts.fontconfig.enable = true;

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowInsecurePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "broadcom-sta"
      "libsoup"
    ];
}
