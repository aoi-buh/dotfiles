return {
	"ggandor/leap.nvim",
	lazy = false,
	enabled = false,
	init = function ()
		require('leap').create_default_mappings()
	end
}
