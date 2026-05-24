# nix/modules/darwin.nix — auto-generated from scoped-tls.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.scoped-tls; in {
  options.services.scoped-tls = {
    enable = lib.mkEnableOption "scoped-tls";
    package = lib.mkOption { type = lib.types.package; default = pkgs.scoped-tls or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
