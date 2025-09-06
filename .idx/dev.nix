# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-25.05"; # or "unstable"
  
  # Use https://search.nixos.org/packages to find packages
  packages = [
    # Python environment
    pkgs.python311
    pkgs.python311Packages.pip
    
    # Development tools (uv includes pip functionality)
    pkgs.uv
    pkgs.curl
    pkgs.wget
    pkgs.git
    pkgs.gnumake
    pkgs.gcc
  ];
  
  # Sets environment variables in the workspace
  env = {
    # Note: 環境変数は各自の環境に合わせて設定してください
    # 詳細は README_SETUP.md を参照
    PYTHONPATH = ".";
  };
  
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      "google.gemini-cli-vscode-ide-companion"
      "ms-python.python"
      "ms-toolsai.jupyter"
      "ms-toolsai.jupyter-keymap"
      "ms-toolsai.jupyter-renderers"
    ];
  };
}