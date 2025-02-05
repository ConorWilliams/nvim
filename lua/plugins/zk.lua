return {
  "pkazmier/zk-nvim",
  branch = "snacks-picker",

  keys = {
    -- New note in same dir as current buffer.
    {
      "<leader>Z",
      "<Cmd>ZkNew { dir = vim.fn.expand('%:p:h'), title = vim.fn.input('Title: ') }<CR>",
      desc = "New note",
    },
    -- Find note
    {
      "<leader>z",
      "<Cmd>ZkNotes<CR>",
      desc = "Find Note",
    },
  },

  config = function()
    require("zk").setup({
      picker = "snacks_picker",
    })
  end,
}
