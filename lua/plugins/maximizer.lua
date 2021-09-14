--"szw/vim-maximizer
--"---------------------------------------------------------------------
--"   PluginName: vim-maximizer
--"   Github:     github.com/szw/vim-maximizer
--
--"---------------------------------------------------------------------
--
--
--"---------------------------------------------------------------------
--"       CONFIGS
--"---------------------------------------------------------------------
--"Whether Maximizer should set default mappings or not:
vim.g.maximizer_set_default_mapping = 0


--"---------------------------------------------------------------------
--"       end of CONFIGS
--"---------------------------------------------------------------------
--
--
--
--
--
--"---------------------------------------------------------------------
--"       MAPPINGS
--"---------------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<leader>m', ':MaximizerToggle <CR>', {silent=true, noremap=true})



--" let g:maximizer_set_mapping_with_bang = 1

--"---------------------------------------------------------------------
--"       enf of MAPPINGS
--"---------------------------------------------------------------------


