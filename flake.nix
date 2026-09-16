{
  description = "dreaming.systems webpage development environment0";
  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f system);
    in
    {
      devShells = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = pkgs.mkShell {
            packages = [
              pkgs.uv
              pkgs.zola
              pkgs.just # task runner, so recipes work inside the dev shell
              pkgs.graphviz # `dot` binary, used by exocortex to render maps
              pkgs.zip # used by `just package` to zip the site for Pages
            ];

            # LLMs often want to use a Python environment with some popular
            # libraries for running one-off validation/exploration commands
            buildInputs = [
              # Precompiled PyPI wheels (numpy, torch, ...) link against
              # libstdc++, which a nix dev shell does not provide on its own
              # (on NixOS this is usually papered over by nix-ld).
              pkgs.stdenv.cc.cc.lib
              (pkgs.python3.withPackages (python: [
                python.pyyaml
              ]))
            ];

            shellHook = ''
              export LD_LIBRARY_PATH=${pkgs.stdenv.cc.cc.lib}/lib:$LD_LIBRARY_PATH
            '';
          };
        });
    };
}
