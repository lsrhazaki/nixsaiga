{ config, pkgs, ... }:

{
  #services.displayManager.defaultSession = "none+leftwm";
  services.xserver = {
          windowManager.leftwm.enable = true;
          serverFlagsSection = ''
            Option "BlankTime" "0"
            Option "StandbyTime" "0"
            Option "SuspendTime" "0"
            Option "OffTime" "0"
          '';
   };
}

