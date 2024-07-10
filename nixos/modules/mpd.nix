{
  pkgs,
  user,
  ...
}: {
  systemd.services.mpd.environment = {
    # https://gitlab.freedesktop.org/pipewire/pipewire/-/issues/609
    # User-id 1000 must match above user. MPD will look inside this directory for the PipeWire socket.
    XDG_RUNTIME_DIR = "/run/user/1000";
  };

 # MPD
  services.mpd = {
  enable = true;
  musicDirectory = "/home/hazaki/Music";
  extraConfig = ''
  audio_output {
    type "pulse"
    name "pulseoutput"
  }
  '';
  network.listenAddress = "any"; # if you want to allow non-localhost connections
  startWhenNeeded = true; # systemd feature: only start MPD service upon connection to its socket
  };

  environment.systemPackages = with pkgs; let
    ncmpcpp = pkgs.ncmpcpp.override {
      visualizerSupport = true;
    };
  in [
    ncmpcpp # https://cht.sh/ncmpcpp
    picard
    flac # metaflac --list (fzf)
    mmv # mmv '*' '#l1'
  ];

  environment.shellAliases = {
    m = "ncmpcpp";
  };
}
