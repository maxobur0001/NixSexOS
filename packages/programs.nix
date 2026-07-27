{pkgs, pkgs-unstable, lib, inputs, ...}: {
  programs.xwayland.enable = true;
  programs.niri = {
    enable = true;
    package = pkgs.niri;
  };
  programs.zsh.enable = true;
  programs.git.enable = true;
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
  programs.i3lock = {
    enable = true;
    package = pkgs.i3lock-color;
  };
  programs.kdeconnect.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    ranger
    wget
    home-manager
    brightnessctl
    pulseaudio
    libnotify
    wl-clipboard
    xclip
    maim
    playerctl
    swaybg
    grim
    slurp
    eza
    xwayland-satellite
    blobdrop
    btop
    mpv
    kew
    audacity
    obsidian
    imagemagick
    bluetui
    thunderbird
    telegram-desktop
    zip
    p7zip
    unzip
    unrar
    gamemode
    gnome-calculator
    gcc
    qbittorrent
    steamcmd
    gdb
    ffmpeg
    blender
    lua5_2
    luarocks
    gimp
    feh
    wineWow64Packages.stable
    winetricks
    stylua
    gmad
    vesktop
    krita
    love
    kdePackages.kdenlive
    python3
    wf-recorder
    sqlite
    yazi
    obs-studio
    inputs.prismlauncher.packages.${pkgs.stdenv.system}.prismlauncher
    yt-dlp
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
