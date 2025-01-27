return {
	"nvim-lualine/lualine.nvim",
	event = "BufReadPre",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				disabled_filetypes = { "neo-tree", "NvimTree", "lazy", "dashboard" },
			},
			sections = {
				lualine_c = { { "filename", path = 1 } },
				lualine_x = {},
				lualine_y = { "filetype" },
			},
		})
	end,
}
