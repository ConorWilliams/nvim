return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      layout = {
        cycle = true,
        -- Inspired by the vertical layout
        layout = {
          backdrop = false,
          width = 0.8,
          height = 0.8,
          min_width = 80,
          min_height = 30,
          box = "vertical",
          border = "rounded",
          title = "{title} {live} {flags}",
          title_pos = "center",
          { win = "input", height = 1, border = "bottom" },
          { win = "list", border = "none" },
          { win = "preview", title = "{preview}", height = 0.6, border = "top" },
        },
      },
      matcher = {
        frecency = true, -- frecency bonus
      },

      win = {
        -- input window
        input = {
          keys = {
            ["<Esc>"] = { "close", mode = { "n", "i" } },
          },
        },
      },
    },
  },
  -- Swap most of the <cwd> and <root> keybindings
  -- stylua: ignore
  keys = {
    { "<leader>/", LazyVim.pick("grep", { root = false }), desc = "Grep (cwd)" },
    { "<leader><space>", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
    -- find
    { "<leader>fF", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    { "<leader>ff", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
    -- Grep
    { "<leader>sG", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
    { "<leader>sg", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
    { "<leader>sW", LazyVim.pick("grep_word"), desc = "Visual selection or word (Root Dir)", mode = { "n", "x" } },
    { "<leader>sw", LazyVim.pick("grep_word", { root = false }), desc = "Visual selection or word (cwd)", mode = { "n", "x" } },
  },
}
