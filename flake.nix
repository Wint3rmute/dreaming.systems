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
              pkgs.graphviz # `dot` binary, used by exocortex to render maps
            ];

            # LLMs often want to use a Python environment with some popular
            # libraries for running one-off validation/exploration commands
            buildInputs = [
              (pkgs.python3.withPackages (python: [
                python.pyyaml
              ]))
            ];
          };
        });
    };
}
