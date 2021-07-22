--━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━--
--─────────────────────────────────────────────────--
--   Plugin:    flutter-tools.nvim
--   Github:    github.com/akinsho/flutter-tools.nvim
--─────────────────────────────────────────────────--
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━--




--━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━--
--━━━━━━━━━━━━━━━━━━━❰ configs ❱━━━━━━━━━━━━━━━━━━━--
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━--






-- override the default configs
require("flutter-tools").setup {
  ui = {
    -- the border type to use for all floating windows, the same options/formats
    -- used for ":h nvim_open_win" e.g. "single" | "shadow" | {<table-of-eight-chars>}
    border = "rounded",
  },
  debugger = { -- integrate with nvim dap + install dart code debugger
    enabled = false,
  },
  widget_guides = {
    enabled = true,
  },
  closing_tags = {
    prefix = "//", -- character to use for close tag e.g. > Widget
    enabled = true -- set to false to disable
  },
  dev_log = {
    open_cmd = "tabedit", -- command to use to open the log buffer
  },
  dev_tools = {
    autostart = false, -- autostart devtools server if not detected
    auto_open_browser = false, -- Automatically opens devtools in the browser
  },
  outline = {
    open_cmd = "35vnew", -- command to use to open the outline buffer
  },
}


-- Telescope Integration
--      In order to set this up, you can explicitly load the extension.
require("telescope").load_extension("flutter")





--   --> Highlights/Colors
--                   Widget guides
-- FlutterWidgetGuides       - this changes the highlight of the Widget guides
--                   Notifications
-- The highlights for flutter-tools notifications and popups can be changed by overriding the default highlight groups
-- FlutterNotificationNormal - this changes the highlight of the notification content.
-- FlutterNotificationBorder - this changes the highlight of the notification border.
-- FlutterPopupNormal        - this changes the highlight of the popup content.
-- FlutterPopupBorder        - this changes the highlight of the popup border.
-- FlutterPopupSelected      - this changes the highlight of the popup's selected line.

-- autocmd VimEnter *.dart highlight FlutterWidgetGuides        guifg=#8C8C8C
-- autocmd VimEnter *.dart highlight FlutterNotificationNormal  guifg=#8C8C8C
-- autocmd VimEnter *.dart highlight FlutterNotificationBorder  guifg=#8C8C8C
-- autocmd VimEnter *.dart highlight FlutterPopupNormal         guifg=#8C8C8C
-- autocmd VimEnter *.dart highlight FlutterPopupBorder         guifg=#8C8C8C
-- autocmd VimEnter *.dart highlight FlutterPopupSelected       guifg=#8C8C8C



--━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━--
--━━━━━━━━━━━━━━━━━❰ end configs ❱━━━━━━━━━━━━━━━━━--
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━--





--━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━--
--━━━━━━━━━━━━━━━━━━━❰ Mappings ❱━━━━━━━━━━━━━━━━━━━--
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━--


--               -->Code Action
--       NOTE: for code action, see telescope.nvim.vim config file. Telescope Integration is default

 -- -- Open code actions using the default lsp UI, if you want to change this please see the plugins above
 -- nnoremap <leader>ca <Cmd>lua vim.lsp.buf.code_action()<CR>
 -- -- Open code actions for the selected visual range
 -- xnoremap <leader>ca <Cmd>lua vim.lsp.buf.range_code_action()<CR>

-- Telescope plufin dependent configs

-- to list available commands in flutter-tools plugin
vim.cmd([[ autocmd VimEnter *.dart  nnoremap <Leader>o :Telescope flutter commands <CR> ]])

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━--
--━━━━━━━━━━━━━━━━━❰ end Mappings ❱━━━━━━━━━━━━━━━━--
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━--

