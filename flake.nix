{
  description = "Setting up both Vims";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }: 
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    devShells.${system}.default = 
      pkgs.mkShell
        {
	  buildInputs = [
	    pkgs.neovim
	    pkgs.vim
            pkgs.git
 	  ];	
	  
          shellHook = ''
	    echo "Hello Mao"
	  '';
         }; 
   };
}
