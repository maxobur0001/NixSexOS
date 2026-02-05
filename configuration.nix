{ pkgs, ... }:

{
  imports = [./packages];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.supportedFilesystems = [ "ntfs" ];
  boot.kernelPackages = pkgs.linuxPackages_zen;
  networking = {
    networkmanager.enable = true;
    firewall = {
      enable = true;
      allowedTCPPorts = [ 22 80 443 27005 27015 27016 ];
      allowedUDPPorts = [ 22 80 443 27005 27015 27016 ];
    };
  };

  # Set your time zone.
  time.timeZone = "Europe/Moscow";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.supportedLocales = [ "en_US.UTF-8/UTF-8" "ru_RU.UTF-8/UTF-8" ];

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.maxobur0001 = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [ "wheel" "networkmanager" "audio" "video" "adbusers" "wireshark" "docker" ];
  };

  security.sudo = {
    enable = true;
    extraConfig = ''
    maxobur0001 ALL=(ALL:ALL) NOPASSWD: ALL
    '';
  };
  security.rtkit.enable = true;

  environment.sessionVariables = {
    "NIXOS_OZONE_WL" = "1";
    "EDITOR" = "nvim";
  };
  nix.settings.experimental-features = ["nix-command" "flakes"];

  # don't touch it folk
  system.stateVersion = "25.05";
}

