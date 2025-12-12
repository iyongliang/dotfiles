-- Install Lazy.nvim automatically if it's not installed(Bootstraping)
-- Hint: string concatenation is done by `..`
local lazypath = vim.fn.stdpath("config") .. "/lazy/lazy.nvim"
local langenv = os.getenv("LANG") or ""
local is_zhcn = langenv:find("zh_CN") ~= nil

local function get_url(repo)
  if is_zhcn then
    local plugin_name = repo:match("([^/]+)$")
    repo = "https://gitee.com/iyongliang/" .. plugin_name .. ".git"
  end
  return repo
end

if not vim.loop.fs_stat(lazypath) then
  gitrepo = get_url("https://github.com/folke/lazy.nvim")
  vim.notify("clone lazy from " .. gitrepo)
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    gitrepo,
    "--branch=main", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- After installation, run `checkhealth lazy` to see if everything goes right
-- Hints:
--     build: It will be executed when a plugin is installed or updated
--     config: It will be executed when the plugin loads
--     event: Lazy-load on event
--     dependencies: table
--                   A list of plugin names or plugin specs that should be loaded when the plugin loads.
--                   Dependencies are always lazy-loaded unless specified otherwise.
--     ft: Lazy-load on filetype
--     cmd: Lazy-load on command
--     init: Functions are always executed during startup
--     branch: string?
--             Branch of the repository
--     main: string?
--           Specify the main module to use for config() or opts()
--           , in case it can not be determined automatically.
--     keys: string? | string[] | LazyKeysSpec table
--           Lazy-load on key mapping
--     opts: The table will be passed to the require(...).setup(opts)
require("vim.treesitter.health").check()     
require("lazy").setup({
  {
    url = get_url("folke/which-key.nvim"),
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
  -- Colorscheme
  -- "tanvirtin/monokai.nvim",
  -- Autopairs: [], (), "", '', etc
  {
    url = get_url("windwp/nvim-autopairs"),
    event = "InsertEnter",
    config = function()
      require("config.nvim-autopairs")
    end,
  },
  -- Show indentation and blankline
  {
    url = get_url("lukas-reineke/indent-blankline.nvim"),
    main = "ibl",
    config = function()
      require("config.indent-blankline")
    end,
  },
  -- Using lazy.nvim
  -- Using coc.vim
  -- {
  --   url = get_url("neoclide/coc.vim"),
  --   branch = "release",
  --   priority = 1000,
  --   config = function()
  --   end,
  -- },
  -- Status line
  {
    url = get_url("nvim-lualine/lualine.nvim"),
    dependencies = {
        get_url("nvim-tree/nvim-web-devicons"),
    },
    config = function()
      require("config.lualine")
    end,
  },
  {
    url = get_url("ellisonleao/gruvbox.nvim"),
    priority = 1000 ,
    config = true,
  },
  {
    url = get_url("nickkadutskyi/jb.nvim"),
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        -- require("jb").setup({transparent = true})
        vim.cmd("colorscheme jb")
    end,
  }
}, {
  root = vim.fn.stdpath("config") .. "/lazy",
})
