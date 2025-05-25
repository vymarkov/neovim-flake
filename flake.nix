{
  description = "Aorith's neovim flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    systems.url = "github:nix-systems/default";

    treefmt-nix.url = "github:numtide/treefmt-nix";
    treefmt-nix.inputs.nixpkgs.follows = "nixpkgs";

    # External plugins from lazy-lock.json
    blink-cmp.url = "github:Saghen/blink.cmp/022521a8910a5543b0251b21c9e1a1e989745796";
    blink-cmp.flake = false;

    cloak-nvim.url = "github:laytan/cloak.nvim/648aca6d33ec011dc3166e7af3b38820d01a71e4";
    cloak-nvim.flake = false;

    comment-nvim.url = "github:numToStr/Comment.nvim/e30b7f2008e52442154b66f7c519bfd2f1e32acb";
    comment-nvim.flake = false;

    fidget-nvim.url = "github:j-hui/fidget.nvim/d9ba6b7bfe29b3119a610892af67602641da778e";
    fidget-nvim.flake = false;

    flash-nvim.url = "github:folke/flash.nvim/3c942666f115e2811e959eabbdd361a025db8b63";
    flash-nvim.flake = false;

    friendly-snippets.url = "github:rafamadriz/friendly-snippets/572f5660cf05f8cd8834e096d7b4c921ba18e175";
    friendly-snippets.flake = false;

    fzf-lua.url = "github:ibhagwan/fzf-lua/66e620a7a724364809e78a1ae4b5bfe73e37df49";
    fzf-lua.flake = false;

    gitlinker-nvim.url = "github:ruifm/gitlinker.nvim/cc59f732f3d043b626c8702cb725c82e54d35c25";
    gitlinker-nvim.flake = false;

    go-nvim.url = "github:ray-x/go.nvim/aa752f5d8f6cd9357620ae284cf3b3784986a102";
    go-nvim.flake = false;

    lazy-nvim.url = "github:folke/lazy.nvim/6c3bda4aca61a13a9c63f1c1d1b16b9d3be90d7a";
    lazy-nvim.flake = false;

    luasnip.url = "github:L3MON4D3/LuaSnip/458560534a73f7f8d7a11a146c801db00b081df0";
    luasnip.flake = false;

    markdown-preview-nvim.url = "github:iamcco/markdown-preview.nvim/a923f5fc5ba36a3b17e289dc35dc17f66d0548ee";
    markdown-preview-nvim.flake = false;

    mason-lspconfig-nvim.url = "github:williamboman/mason-lspconfig.nvim/2cb844268288ccc06b8d0f368ef3c2b195e8278c";
    mason-lspconfig-nvim.flake = false;

    mason-nvim.url = "github:williamboman/mason.nvim/1aceba8bc158b5aaf90649077cad06744bc23ac4";
    mason-nvim.flake = false;

    mason-tool-installer-nvim.url = "github:WhoIsSethDaniel/mason-tool-installer.nvim/75d60a8f928decd8b38897f80849768b7c540a5b";
    mason-tool-installer-nvim.flake = false;

    mini-nvim.url = "github:echasnovski/mini.nvim";
    mini-nvim.flake = false;

    nightfox-nvim.url = "github:EdenEast/nightfox.nvim/ba47d4b4c5ec308718641ba7402c143836f35aa9";
    nightfox-nvim.flake = false;

    nvim-colorizer-lua.url = "github:norcalli/nvim-colorizer.lua/a065833f35a3a7cc3ef137ac88b5381da2ba302e";
    nvim-colorizer-lua.flake = false;

    nvim-lastplace.url = "github:ethanholz/nvim-lastplace/0bb6103c506315044872e0f84b1f736c4172bb20";
    nvim-lastplace.flake = false;

    nvim-spectre.url = "github:nvim-pack/nvim-spectre/72f56f7585903cd7bf92c665351aa585e150af0f";
    nvim-spectre.flake = false;

    nvim-ts-context-commentstring.url = "github:JoosepAlviste/nvim-ts-context-commentstring/1b212c2eee76d787bbea6aa5e92a2b534e7b4f8f";
    nvim-ts-context-commentstring.flake = false;

    nvim-ufo.url = "github:kevinhwang91/nvim-ufo/3c7a3570e9c9dc198a2ad4491b0b0e51c4d4ba08";
    nvim-ufo.flake = false;

    obsidian-nvim.url = "github:epwalsh/obsidian.nvim/ae1f76a75c7ce36866e1d9342a8f6f5b9c2caf9b";
    obsidian-nvim.flake = false;

    oil-nvim.url = "github:stevearc/oil.nvim/685cdb4ffa74473d75a1b97451f8654ceeab0f4a";
    oil-nvim.flake = false;

    promise-async.url = "github:kevinhwang91/promise-async/119e8961014c9bfaf1487bf3c2a393d254f337e2";
    promise-async.flake = false;

    quicker-nvim.url = "github:stevearc/quicker.nvim/51d3926f183c2d98fbc237cc237ae0926839af3a";
    quicker-nvim.flake = false;

    render-markdown-nvim.url = "github:MeanderingProgrammer/render-markdown.nvim/a1b0988f5ab26698afb56b9c2f0525a4de1195c1";
    render-markdown-nvim.flake = false;

    schemastore-nvim.url = "github:b0o/schemastore.nvim/386bdbf18abb6ca103495c5bdbab65e46f3c361d";
    schemastore-nvim.flake = false;

    snacks-nvim.url = "github:folke/snacks.nvim/bc0630e43be5699bb94dadc302c0d21615421d93";
    snacks-nvim.flake = false;

    suda-vim.url = "github:lambdalisue/suda.vim/9adda7d195222d4e2854efb2a88005a120296c47";
    suda-vim.flake = false;

    todo-comments-nvim.url = "github:folke/todo-comments.nvim/304a8d204ee787d2544d8bc23cd38d2f929e7cc5";
    todo-comments-nvim.flake = false;

    vim-dadbod.url = "github:tpope/vim-dadbod/e95afed23712f969f83b4857a24cf9d59114c2e6";
    vim-dadbod.flake = false;

    vim-dadbod-completion.url = "github:kristijanhusak/vim-dadbod-completion/a8dac0b3cf6132c80dc9b18bef36d4cf7a9e1fe6";
    vim-dadbod-completion.flake = false;

    vim-dadbod-ui.url = "github:kristijanhusak/vim-dadbod-ui/460432301a5cb280ea265ddfa15c9f3dcd1d26b7";
    vim-dadbod-ui.flake = false;

    vim-fugitive.url = "github:tpope/vim-fugitive/4a745ea72fa93bb15dd077109afbb3d1809383f2";
    vim-fugitive.flake = false;

    vim-hugo.url = "github:phelipetls/vim-hugo/324fb8c7371d31701349c1192e25a0bdcf9898f8";
    vim-hugo.flake = false;

    vim-varnish.url = "github:varnishcache-friends/vim-varnish";
    vim-varnish.flake = false;

    which-key-nvim.url = "github:folke/which-key.nvim/370ec46f710e058c9c1646273e6b225acf47cbed";
    which-key-nvim.flake = false;

    windsurf-vim.url = "github:Exafunction/windsurf.vim/272c6e2755e8faa90e26bcdcd9fde6b9e61751ea";
    windsurf-vim.flake = false;
  };

  outputs =
    {
      self,
      nixpkgs,
      systems,
      treefmt-nix,
      ...
    }@inputs:
    let
      eachSystem = nixpkgs.lib.genAttrs (import systems);
      treefmtEval = eachSystem (
        system: treefmt-nix.lib.evalModule nixpkgs.legacyPackages.${system} ./treefmt.nix
      );
    in
    {
      packages = eachSystem (system: {
        # Default package, neovim with the config embedded in the store
        default = import ./nix/neovim.nix { inherit inputs system; };
        # Alternative, uses the config at ~/.config/nvim-nix
        nvim-without-config = import ./nix/neovim.nix {
          inherit inputs system;
          with-config = false;
        };
      });

      # for `nix fmt`
      formatter = eachSystem (system: treefmtEval.${system}.config.build.wrapper);
      # for `nix flake check`
      checks = eachSystem (system: {
        formatting = treefmtEval.${system}.config.build.check self;
      });
    };
}
