require'nvim-treesitter.configs'.setup {
	-- A list of parser names, or "all" (the four listed parsers should always be installed)
	ensure_installed = { "javascript", "php", "html", "css", "lua", "vim" },

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	highlight = {
		enable = true,

		-- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
		additional_vim_regex_highlighting = false,

	},
    indent = {
        enable = true,
    }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.blade = {
    install_info = {
        url = "https://github.com/EmranMR/tree-sitter-blade",
        files = {"src/parser.c"},
        branch = "main",
    },
    filetype = "blade"
}

-- in my settings
-- Filetypes --
vim.filetype.add({
  pattern = {
    ['.*%.blade%.php'] = 'blade',
  },
})
