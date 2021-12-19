-- --------------------------------------------------------------------
--   PluginName: lukas-reineke/indent-blankline.nvim
--   Github:     github.com/lukas-reineke/indent-blankline.nvim
-- --------------------------------------------------------------------




-- --------------------------------------------------------------------
--           CONFIGS
-- --------------------------------------------------------------------

require("indent_blankline").setup {
    show_end_of_line = true,
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,

    -- char_list = {'|', '¦', '┆', '┊'},
    filetype_exclude = {
        'help', 'startify', 'alpha', 'dashboard', 'packer', 'neogitstatus',
        'NvimTree'
    },
    buftype_exclude = {'terminal'},
    use_treesitter = true,
    show_trailing_blankline_indent = false
    -- context_char = '┃' -- pecifies the character to be used for the current context indent line
    -- context_patterns = {'class, function', 'method', '^if'},
}

-- --------------------------------------------------------------------
--           end of CONFIGS
-- --------------------------------------------------------------------

