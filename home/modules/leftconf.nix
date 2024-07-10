{ config, lib, pkgs, ...}: {

home.file.".config/leftwm/themes/current/up".source = ./leftwm/themes/hazaki/up;
home.file.".config/leftwm/themes/current/down".source = ./leftwm/themes/hazaki/down;


home.file.".config/leftwm/config.ron".source = lib.mkDefault ./leftwm/config.ron;

home.file.".config/leftwm/themes/current/wallpapers".source = lib.mkDefault ./leftwm/themes/hazaki/wallpapers;
home.file.".config/leftwm/themes/current/sizes.liquid".source = lib.mkDefault ./leftwm/themes/hazaki/sizes.liquid;
home.file.".config/leftwm/themes/current/change_to_tag".source =  ./leftwm/themes/hazaki/change_to_tag;
home.file.".config/leftwm/themes/current/template.liquid".source = lib.mkDefault ./leftwm/themes/hazaki/template.liquid;
home.file.".config/leftwm/themes/current/theme.ron".source = lib.mkDefault ./leftwm/themes/hazaki/theme.ron;
home.file.".config/leftwm/themes/current/conf/picom.conf".source = lib.mkDefault ./leftwm/themes/hazaki/conf/picom.conf;
home.file.".config/leftwm/themes/current/conf/dunst.config".source = lib.mkDefault ./leftwm/themes/hazaki/conf/dunst.config;

}