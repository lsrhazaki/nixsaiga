{ pkgs, ... }:

{
  # Fonts
  fonts = {
    fontconfig = {
      enable = true;
      defaultFonts = {
        monospace = [ "Iosevka Nerd Font" ];
      };
    };
    packages = with pkgs; [
    roboto-mono
    font-awesome
    source-han-sans
    noto-fonts-color-emoji
    material-design-icons
    source-han-sans-japanese
    source-han-serif-japanese
    (nerdfonts.override { fonts = [ "FiraCode" "Iosevka"
    "JetBrainsMono" "SourceCodePro"
    "FiraMono" "NerdFontsSymbolsOnly" "DroidSansMono" ]; })        
  ];
};
}