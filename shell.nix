{ pkgs ? import <nixpkgs> {} }:

let
  numpiedPython = pkgs.python38.buildEnv.override {
    extraLibs = with pkgs.python38Packages; [ numpy ];
  };
in pkgs.mkShell {
  buildInputs = with pkgs; [numpiedPython gcc erlang elixir bazel];
}
