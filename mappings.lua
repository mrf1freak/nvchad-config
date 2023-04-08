---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<A-j>"] = {
      function ()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "Previous buffer", opts = { nowait = true } },
    ["<A-k>"] = {
      function ()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "Next buffer", opts = { nowait = true } },
    ["<A-w>"] = {
      function ()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "Next buffer", opts = { nowait = true } },
    ["<leader>e"] = { "<cmd>NvimTreeToggle<CR>", "Toggle file tree", opts = { nowait = true } },
    ["<leader>ff"] = { "<cmd>Telescope git_files<CR>", "Find git files", opts = { nowait = true } },
    ["<leader>gg"] = { ":LazyGit<CR>", desc = "Open lazygit" }
  },
}

return M
