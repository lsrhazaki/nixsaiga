{
  imports = [
    ./leftwm.nix
  ];

  disabledModules = [
    ./bspwm.nix
    ./hlwm.nix
    ./awesome.nix
  ];
}