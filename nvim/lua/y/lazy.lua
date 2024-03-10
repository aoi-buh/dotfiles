
-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	-- NOTE: Plugins can also be configured to run lua code when they are loaded.
	--
	-- This is often very useful to both group configuration, as well as handle
	-- lazy loading plugins that don't need to be loaded immediately at startup.
	--
	-- For example, in the following configuration, we use:
	--  event = 'VeryLazy'
	--
	-- which loads which-key after all the UI elements are loaded. Events can be
	-- normal autocommands events (:help autocomd-events).
	--
	-- Then, because we use the `config` key, the configuration only runs
	-- after the plugin has been loaded:
	--  config = function() ... end

	-- { -- Autoformat
	-- 	"stevearc/conform.nvim",
	-- 	opts = {
	-- 		notify_on_error = false,
	-- 		format_on_save = {
	-- 			timeout_ms = 500,
	-- 			lsp_fallback = true,
	-- 		},
	-- 		formatters_by_ft = {
	-- 			lua = { "stylua" },
	-- 			-- Conform can also run multiple formatters sequentially
	-- 			-- python = { "isort", "black" },
	-- 			--
	-- 			-- You can use a sub-list to tell conform to run *until* a formatter
	-- 			-- is found.
	-- 			-- javascript = { { "prettierd", "prettier" } },
	-- 		},
	-- 	},
	-- },

	{ import = "y.plugins" },
}, {})
