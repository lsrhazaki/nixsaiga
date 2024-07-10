{pkgs, ...}: {
  gtk = {
    enable = true;
    gtk3.extraConfig.gtk-decoration-layout = "menu:";
    gtk4.extraConfig.gtk-hint-font-metrics = 1;
    cursorTheme.name = "Bibata-Modern-Classic";
    iconTheme = {
      name = "gruvbox-plus-icons";
      package = pkgs.gruvbox-plus-icons;
    };
    theme.name = "Gruvbox-material";
    font.name = "Iosevka Bold";
    font.size = 9;
  };
   home.file = {
    ".themes".source = ./programs/.themes;
   };

qt = {
    enable = true;
    platformTheme.name = "gtk3";
    #style = {
    #  name = "lightly";
    #  package = pkgs.lightly-qt;
    #};
  };

  home.pointerCursor = {
    name = "capitaine-cursors";
    package = pkgs.capitaine-cursors-themed;
    size = 10;
  };
}