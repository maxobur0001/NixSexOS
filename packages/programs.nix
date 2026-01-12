{pkgs, lib, ...}: {
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
    unzip
    zip
    unrar
    p7zip
    docker
    rustup
    gamemode
    gnome-calculator
    gcc
    qbittorrent
    steamcmd
    gdb
    r2modman
    ffmpeg
    mpvpaper
    blender
    lua
  ];

  fonts.packages = with pkgs; [
    noto-fonts
  ];

  fonts.fontconfig.enable = true;

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowInsecurePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "broadcom-sta"
    ];
}
