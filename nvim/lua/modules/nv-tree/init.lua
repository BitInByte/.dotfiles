-- vim.g.nvim_tree_quit_on_open = 1
--
-- -- following options are the default
-- -- each of these are documented in `:help nvim-tree.OPTION_NAME`
-- require "nvim-tree".setup {
--   disable_netrw = true,
--   hijack_netrw = true,
--   open_on_setup = false,
--   ignore_ft_on_setup = {},
--   auto_close = true,
--   open_on_tab = false,
--   hijack_cursor = false,
--   update_cwd = false,
--   update_to_buf_dir = {
--     enable = true,
--     auto_open = true
--   },
--   actions = {
--     open_file = {
--       quit_on_open = true
--     }
--   },
--   diagnostics = {
--     enable = true,
--     icons = {
--       hint = "",
--       info = "",
--       warning = "",
--       error = ""
--     }
--   },
--   update_focused_file = {
--     enable = false,
--     update_cwd = false,
--     ignore_list = {}
--   },
--   system_open = {
--     cmd = nil,
--     args = {}
--   },
--   filters = {
--     dotfiles = true,
--     custom = {}
--   },
--   view = {
--     width = 30,
--     height = 30,
--     hide_root_folder = false,
--     side = "left",
--     auto_resize = false,
--     mappings = {
--       custom_only = false,
--       list = {}
--     }
--   }
-- }
-- setup with all defaults
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
require "nvim-tree".setup {
  -- BEGIN_DEFAULT_OPTS
  auto_close = false,
  auto_reload_on_write = true,
  disable_netrw = false,
  hide_root_folder = false,
  hijack_cursor = false,
  hijack_netrw = true,
  hijack_unnamed_buffer_when_opening = false,
  ignore_buffer_on_setup = false,
  open_on_setup = false,
  open_on_tab = false,
  sort_by = "name",
  update_cwd = false,
  view = {
    width = 30,
    height = 30,
    side = "left",
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    mappings = {
      custom_only = false,
      list = {}
    }
  },
  hijack_directories = {
    enable = true,
    auto_open = true
  },
  update_focused_file = {
    enable = false,
    update_cwd = false,
    ignore_list = {}
  },
  ignore_ft_on_setup = {},
  system_open = {
    cmd = nil,
    args = {}
  },
  diagnostics = {
    enable = false,
    show_on_dirs = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = ""
    }
  },
  filters = {
    dotfiles = false,
    custom = {},
    exclude = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 400
  },
  actions = {
    change_dir = {
      enable = true,
      global = false
    },
    open_file = {
      quit_on_open = true,
      resize_window = false,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = {"notify", "packer", "qf", "diff", "fugitive", "fugitiveblame"},
          buftype = {"nofile", "terminal", "help"}
        }
      }
    }
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      git = false
    }
  }
} -- END_DEFAULT_OPTS

-- vim.g.nvim_tree_quit_on_open = 1
-- silent - command will not be echoed in the command line
-- noremap - non recursive map
vim.api.nvim_set_keymap("n", "<C-t>", ":NvimTreeToggle<CR>", {silent = true})
