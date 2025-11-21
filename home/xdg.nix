{pkgs, lib, ...}: {
  xdg.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gnome
      xdg-desktop-portal-wlr
    ];
    config.niri.default = [ "gnome" "wlr" ];
    xdgOpenUsePortal = true;
  };

  xdg.mime.enable = true;
  xdg.mimeApps.enable = true;
}
