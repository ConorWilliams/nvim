return {
  {
    "stevearc/oil.nvim",

    opts = {},

    dependencies = { { "echasnovski/mini.icons", opts = {} } },

    keys = {
      { "<leader>o", "<cmd>Oil<cr>", desc = "Open Oil" },
    },

    config = function()
      require("oil").setup({
        -- Use LazyVim's default file explorer.
        default_file_explorer = false,
      })

      -- Add a keymap for writing and closing the buffer in Oil
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "oil",
        callback = function()
          vim.keymap.set("n", "<leader>o", function()
            require("oil").save(nil, function()
              require("oil").close()
            end)
          end, { buffer = true, desc = "Write and close Oil buffer" })
        end,
      })
    end,
  },
}
