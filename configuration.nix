{ pkgs, ... }:

{
  imports = [./packages];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_zen;

  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  # Set your time zone.
  time.timeZone = "Europe/Moscow";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocales = "all";

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.maxobur0001 = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [ "wheel" "networkmanager" "audio" "video" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      tree
    ];
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
    "DEFAULT_BROWSER" = "${pkgs.qutebrowser}/bin/qutebrowser";
  };
  nix.settings.experimental-features = ["nix-command" "flakes"];

  # don't touch it folk
  system.stateVersion = "25.05"; # Did you read the comment?
}

