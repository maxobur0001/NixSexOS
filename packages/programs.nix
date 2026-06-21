{pkgs, pkgs-unstable, lib, ...}: {
  programs.xwayland.enable = true;
  programs.alvr = {
    enable = true;
    package = pkgs.alvr.overrideAttrs (
      finalAttrs: prevAttrs: {
        version = "20.13.0";

        src = pkgs.fetchFromGitHub {
          owner = "alvr-org";
          repo = "ALVR";
          tag = "v${finalAttrs.version}";
          fetchSubmodules = true;
          hash = "sha256-h7/fuuolxbNkjUbqXZ7NTb1AEaDMFaGv/S05faO2HIc=";
        };

        cargoDeps = pkgs.rustPlatform.fetchCargoVendor {
          inherit (finalAttrs) src;
          hash = "sha256-A0ADPMhsREH1C/xpSxW4W2u4ziDrKRrQyY5kBDn//gQ=";
        };
      }
    );
    openFirewall = true;
  };
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
    extraCompatPackages = with pkgs; [
      proton-ge-bin
    ];
  };
  programs.appimage.enable = true;
  programs.amnezia-vpn = {
    enable = true;
    package = pkgs-unstable.amnezia-vpn;
  };
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
  programs.i3lock = {
    enable = true;
    package = pkgs.i3lock-color;
  };

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
    sidequest
    r2modman
    chromium
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
