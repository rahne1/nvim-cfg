return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = {
      config = {

        header = {
          "                                   ",
          "           ▄ ▄                     ",

          "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄       ",
          "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █       ",
          "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █       ",
          "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄    ",
          "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄  ",
          "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █  ",
          "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █  ",
          "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█     ",
          "                                   ",
        },
        center = {

          {
            action = "Telescope oldfiles",
            desc = "Recent files",
            icon = "🕒 ",
            key = "r",

          },

          {
            action = "enew",

            desc = "New file",
            icon = "📄 ",
            key = "n",
          },
          {
            action = "Telescope find_files",
            desc = "Find files",
            icon = "🔍 ",
            key = "f",
          },
          {
            action = "Telescope live_grep",
            desc = "Find text",
            icon = "📝 ",
            key = "g",
          },
          {
            action = "e $MYVIMRC",
            desc = "Config",
            icon = "⚙️ ",
            key = "c",
          },
          {
            action = "qa",
            desc = "Quit",
            icon = "🚪 ",
            key = "q",
          },
        },
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { string.format("Neovim loaded %d plugins in %s ms", stats.count, ms) }
        end,
      },
      opts = {
        shortcut_type = "number",
        theme = "doom",
      },
    },
    config = function(_, opts)
      vim.opt.guifont = "JetBrainsMono Nerd Font:h11"

      require("dashboard").setup(opts)
    end,
  },
}
