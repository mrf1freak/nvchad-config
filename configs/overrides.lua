local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
    timeout = 2000
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  on_attach = function (bufnr)
    local api = require("nvim-tree.api")
    api.config.mappings.default_on_attach(bufnr)
    vim.keymap.set('n', 'l', api.node.open.edit, { desc = "Open", buffer = bufnr, noremap = true, silent = true, nowait = true})
  end
}

local width = 0.9
local height = 0.8
local row = (1 - width) / 2
local col = (1 - height) / 2

M.nvterm = {
  terminals = {
    type_opts = {
      float = {
        width = width,
        height = height,
        row = row,
        col = col
      }
    }
  }
}

return M
