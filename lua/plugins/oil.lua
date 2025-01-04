return {
  {
    "stevearc/oil.nvim",

    opts = {},

    default_file_explorer = false,

    skip_confirm_for_simple_edits = true,

    dependencies = { { "echasnovski/mini.icons", opts = {} } },

    keys = {
      { "<leader>o", "<cmd>Oil<cr>", desc = "Open Oil" },
    },

    config = function()
      require("oil").setup({})

      -- Add a keymap for writing and closing the buffer in Oil
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "oil",
        callback = function()
          vim.keymap.set("n", "<ESC>", function()
            require("oil").save(nil, function()
              require("oil").close()
            end)
          end, { buffer = true, desc = "Write and close Oil buffer" })
        end,
      })
    end,
  },
}
