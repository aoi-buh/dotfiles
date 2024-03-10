return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    lazy = false,

    dependencies = { "nvim-lua/plenary.nvim" },

    init = function () require("harpoon"):setup() end,

    config = function()
      local harpoon = require("harpoon")

      vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end, { desc = "Add To List" })
      vim.keymap.set("n", "<A-h>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Open Harpoon Menu" })

      vim.keymap.set("n", "<A-n>", function() harpoon:list():select(1) end, { desc = "Harpoon File 1" })
      vim.keymap.set("n", "<A-e>", function() harpoon:list():select(2) end, { desc = "Harpoon File 2" })
      vim.keymap.set("n", "<A-i>", function() harpoon:list():select(3) end, { desc = "Harpoon File 3" })
      vim.keymap.set("n", "<A-o>", function() harpoon:list():select(4) end, { desc = "Harpoon File 4" })
    end,
  }
}
