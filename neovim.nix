pkgs:
  (pkgs.neovim.override {
    viAlias = true;
    vimAlias = true;
    configure = {
      customRC = ''
        set runtimepath^=~/.config/nvim/
        source ~/.config/nvim/init.vim
      '';
      packages.mine = with pkgs.vimPlugins; {
        start = [
          camelcasemotion
          ctrlp-vim
          fzf-vim
          fzfWrapper
          vim-better-whitespace
          vim-colors-solarized
          vim-commentary
          vim-fetch
          vim-go
          vim-nix
          vim-numbertoggle
          vim-toml
          vim-unicoder
        ];
      };
     };
  })
