{ pkgs, ... }:

{
    environment.systemPackages = [
        pkgs.kitty
    ];

    environment.etc."xdg/kitty/kitty.conf".text=''
        background_opacity 0.65
    '';

    xdg.terminal-exec = {
        enable = true;
        settings = {
            GNOME = [ "kitty.desktop" ];
            default = [ "kitty.desktop" ];
        };
    };

    programs.dconf.profiles.user.databases = [
    {
      settings = {
        "org/gnome/settings-daemon/plugins/media-keys" = {
          custom-keybindings = [
            "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/kitty/"
          ];
        };

        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/kitty" = {
          name = "Open Kitty";
          command = "kitty";
          binding = "<Control><Alt>t";
        };
      };
    }
  ];

}