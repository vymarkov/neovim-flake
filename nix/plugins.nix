{
  inputs,
  pkgs,
  opts,
}:
let
  # Function to create a vim plugin from a flake input
  mkVimPlugin =
    { src, pname }:
    pkgs.vimUtils.buildVimPlugin {
      inherit pname src;
      version = src.lastModifiedDate;
    };

  # Special version for plugins that fail require checks
  mkVimPluginNoCheck =
    { src, pname }:
    pkgs.vimUtils.buildVimPlugin {
      inherit pname src;
      version = src.lastModifiedDate;
      doCheck = false;
    };

  # NOTE: this is for luaPackages: https://github.com/NixOS/nixpkgs/blob/36dcdaf8f6b0e0860721ecd4aada50c0cccc3cfd/pkgs/applications/editors/neovim/build-neovim-plugin.nix#L11-L12
  # pkgs.neovimUtils.buildNeovimPlugin

  # Merge nvim-treesitter parsers together to reduce vim.api.nvim_list_runtime_paths()
  nvim-treesitter-grammars = pkgs.symlinkJoin {
    name = "nvim-treesitter-grammars";
    paths = pkgs.vimPlugins.nvim-treesitter.withAllGrammars.dependencies;
  };
in
with pkgs.vimPlugins;
[
  # https://search.nixos.org/packages?channel=unstable&from=0&size=50&sort=relevance&type=packages&query=vimPlugins

  # Plugins can also be lazy loaded with ':packadd! plugin-name' when optional is true:
  #{ plugin = luasnip; optional = true; }

  # themes
  kanagawa-nvim

  #nvim-treesitter.withAllGrammars
  nvim-treesitter
  nvim-treesitter-grammars
  nvim-treesitter-textobjects
  nvim-treesitter-context

  # format & linting
  conform-nvim
  nvim-lint

  # lsp
  nvim-lspconfig
  lazydev-nvim

  neo-tree-nvim
  undotree
  vim-sleuth
  aerial-nvim
  diffview-nvim

  # telescope-nvim
  # telescope-zf-native-nvim

  # Dependencies
  plenary-nvim
  gitsigns-nvim

  # Plugins from nixpkgs that match lazy-lock.json
  # (Some plugins are available in nixpkgs and don't need external inputs)

  # External plugins from flake inputs
  (mkVimPluginNoCheck {
    src = inputs.blink-cmp;
    pname = "blink-cmp";
  })
  (mkVimPluginNoCheck {
    src = inputs.cloak-nvim;
    pname = "cloak-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.comment-nvim;
    pname = "comment-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.fidget-nvim;
    pname = "fidget-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.flash-nvim;
    pname = "flash-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.friendly-snippets;
    pname = "friendly-snippets";
  })
  (mkVimPluginNoCheck {
    src = inputs.fzf-lua;
    pname = "fzf-lua";
  })
  (mkVimPluginNoCheck {
    src = inputs.gitlinker-nvim;
    pname = "gitlinker-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.go-nvim;
    pname = "go-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.lazy-nvim;
    pname = "lazy-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.luasnip;
    pname = "luasnip";
  })
  (mkVimPluginNoCheck {
    src = inputs.markdown-preview-nvim;
    pname = "markdown-preview-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.mason-lspconfig-nvim;
    pname = "mason-lspconfig-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.mason-nvim;
    pname = "mason-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.mason-tool-installer-nvim;
    pname = "mason-tool-installer-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.mini-nvim;
    pname = "mini-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.nightfox-nvim;
    pname = "nightfox-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.nvim-colorizer-lua;
    pname = "nvim-colorizer-lua";
  })
  (mkVimPluginNoCheck {
    src = inputs.nvim-lastplace;
    pname = "nvim-lastplace";
  })
  (mkVimPluginNoCheck {
    src = inputs.nvim-spectre;
    pname = "nvim-spectre";
  })
  (mkVimPluginNoCheck {
    src = inputs.nvim-ts-context-commentstring;
    pname = "nvim-ts-context-commentstring";
  })
  (mkVimPluginNoCheck {
    src = inputs.nvim-ufo;
    pname = "nvim-ufo";
  })
  (mkVimPluginNoCheck {
    src = inputs.obsidian-nvim;
    pname = "obsidian-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.oil-nvim;
    pname = "oil-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.promise-async;
    pname = "promise-async";
  })
  (mkVimPluginNoCheck {
    src = inputs.quicker-nvim;
    pname = "quicker-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.render-markdown-nvim;
    pname = "render-markdown-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.schemastore-nvim;
    pname = "schemastore-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.snacks-nvim;
    pname = "snacks-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.suda-vim;
    pname = "suda-vim";
  })
  (mkVimPluginNoCheck {
    src = inputs.todo-comments-nvim;
    pname = "todo-comments-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.vim-dadbod;
    pname = "vim-dadbod";
  })
  (mkVimPluginNoCheck {
    src = inputs.vim-dadbod-completion;
    pname = "vim-dadbod-completion";
  })
  (mkVimPluginNoCheck {
    src = inputs.vim-dadbod-ui;
    pname = "vim-dadbod-ui";
  })
  (mkVimPluginNoCheck {
    src = inputs.vim-fugitive;
    pname = "vim-fugitive";
  })
  (mkVimPluginNoCheck {
    src = inputs.vim-hugo;
    pname = "vim-hugo";
  })
  (mkVimPluginNoCheck {
    src = inputs.vim-varnish;
    pname = "vim-varnish";
  })
  (mkVimPluginNoCheck {
    src = inputs.which-key-nvim;
    pname = "which-key-nvim";
  })
  (mkVimPluginNoCheck {
    src = inputs.windsurf-vim;
    pname = "windsurf-vim";
  })
]
++ (pkgs.lib.optionals opts.withSQLite [ sqlite-lua ])
