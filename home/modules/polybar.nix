{
  pkgs,
  lib,
  config,
  ...
}: {
  home.packages = with pkgs; let
    polybar = pkgs.polybar.override {
      pulseSupport = true;
    };
  in [
    polybar
  ];

      home.file.".config/leftwm/themes/current/polybar/config.ini".source = lib.mkDefault ./leftwm/themes/hazaki/polybar/config.ini;
      home.file.".config/leftwm/themes/current/scripts/powermenu.sh".source = ./leftwm/themes/hazaki/scripts/powermenu.sh;
      home.file.".config/leftwm/themes/current/scripts/rasi/powermenu.rasi".source = ./leftwm/themes/hazaki/scripts/rasi/powermenu.rasi;
      home.file.".config/leftwm/themes/current/scripts/launcher.sh".source = ./leftwm/themes/hazaki/scripts/launcher.sh;
      home.file.".config/leftwm/themes/current/scripts/rasi/launcher.rasi".source = ./leftwm/themes/hazaki/scripts/rasi/launcher.rasi;
      home.file.".config/leftwm/themes/current/scripts/rasi/confirm.rasi".source = ./leftwm/themes/hazaki/scripts/rasi/confirm.rasi;
      home.file.".config/leftwm/themes/current/scripts/rasi/message.rasi".source = ./leftwm/themes/hazaki/scripts/rasi/message.rasi;
      home.file.".config/leftwm/themes/current/scripts/pavolume.sh".source = ./leftwm/themes/hazaki/scripts/pavolume.sh;
      home.file.".config/leftwm/themes/current/scripts/colors.sh".source = ./leftwm/themes/hazaki/scripts/colors.sh;
      home.file.".config/leftwm/themes/current/scripts/rasi/colors.rasi".source = ./leftwm/themes/hazaki/scripts/rasi/colors.rasi;
}
