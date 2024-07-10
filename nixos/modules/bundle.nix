{
  imports = [
    ./boot.nix
    ./X11.nix
    ./lightdm.nix
    ./gc.nix
    ./env.nix
    ./user.nix
    ./zram.nix
    ./trim.nix
    ./mpd.nix
    ./fonts.nix
    ./nmhn.nix
    ./locale.nix
    ./sound.nix
    ./opengl.nix
    ./wms/bundle.nix
    ./services.nix
  ];

  disabledModules = [
  ./sddm.nix
  ./printing.nix
  ./hyprland.nix

  ];
}
