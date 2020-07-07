let
  nixpkgs = (import ./nix/sources.nix).nixpkgs;
  pkgs = import nixpkgs {};

  env = pkgs.bundlerEnv {
    name = "jekyll-env";
    ruby = pkgs.ruby;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
  };
in
{
  website = pkgs.stdenv.mkDerivation {
    name = "jekyll";
    src = pkgs.nix-gitignore.gitignoreSource [] ./.;
    nativeBuildInputs = [ pkgs.yq-go env pkgs.bundler pkgs.ruby ];
    LC_ALL = "C.UTF-8";
    buildPhase = ''
      jekyll build --trace
    '';
    installPhase = ''
      cp -r _site $out
    '';
  };
  update-dependencies = pkgs.writeScript "update-dependencies"
    ''
      ${pkgs.niv}/bin/niv update
      ${pkgs.bundix}/bin/bundix -l bundix
    '';
}
