{pkgs, pkgs-unstable, lib, ...}: {
  programs.zsh.enable = true;
  programs.git.enable = true;
  programs.gamescope.enable = true;
  programs.steam = {
    enable = true;
    fontPackages = with pkgs; [
      noto-fonts
      wqy_zenhei
    ];
    extraCompatPackages = with pkgs; [
      proton-ge-bin
    ];
  };
  programs.appimage.enable = true;
  programs.adb.enable = true;
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    stdenv.cc.cc
    zlib
    fuse3
    icu
    nss
    openssl
    curl
    expat
  ];

  environment.systemPackages = with pkgs; [
    vim
    ranger
    wget
    home-manager
    brightnessctl
    pulseaudio
    libnotify
    xclip
    maim
    playerctl
    eza
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
    zip
    p7zip
    unzip
    unrar
    pkgs-unstable.rustup
    gamemode
    gnome-calculator
    gcc
    qbittorrent
    steamcmd
    gdb
    ffmpeg
    blender
    lua
    gimp
    feh
    wineWowPackages.stable
    winetricks
    stylua
    gmad
    vesktop
    krita
    love
    kdePackages.kdenlive
    aseprite
    python3
    wf-recorder
    sqlite
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    montserrat
    nerd-fonts._3270
  ];

  fonts.fontconfig.enable = true;

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowInsecurePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "broadcom-sta"
      "libsoup"
    ];
}
