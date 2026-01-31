{pkgs, ...}: {
  xdg = {
    enable = true;
    autostart.enable = true;
    mime.enable = true;
    mimeApps = {
      enable = true;
      defaultApplications =
      let
        browser = [
          "org.qutebrowser.qutebrowser.desktop"
        ];
        editor = [
          "nvim.desktop"
        ];
      in
      {
        "application/json" = browser;
        "application/pdf" = browser;

        "text/html" = browser;
        "text/xml" = browser;
        "text/plain" = editor;
        "application/xml" = browser;
        "application/xhtml+xml" = browser;
        "application/xhtml_xml" = browser;
        "application/rdf+xml" = browser;
        "application/rss+xml" = browser;
        "application/x-extension-htm" = browser;
        "application/x-extension-html" = browser;
        "application/x-extension-shtml" = browser;
        "application/x-extension-xht" = browser;
        "application/x-extension-xhtml" = browser;
        "application/x-wine-extension-ini" = editor;

        "x-scheme-handler/http" = browser;
        "x-scheme-handler/https" = browser;
        "x-scheme-handler/tg" = [ "org.telegram.desktop.desktop " ];

        "audio/*" = [ "mpv.desktop" ];
        "video/*" = [ "mpv.desktop" ];
        "image/*" = [ "imv-dir.desktop" ];
        "image/gif" = [ "feh.desktop" ];
        "image/jpeg" = [ "feh.desktop" ];
        "image/png" = [ "feh.desktop" ];
        "image/webp" = [ "feh.desktop" ];
      };
    };
    portal = {
      enable = true;
      extraPortals = with pkgs; [
        xdg-desktop-portal-gnome
        xdg-desktop-portal-gtk
        xdg-desktop-portal-wlr
      ];
      xdgOpenUsePortal = true;
    };
  };
}
