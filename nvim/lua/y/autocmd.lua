-- [[ Basic Autocommands ]]
--  See :help lua-guide-autocommands

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd("BufWinEnter", {
	group = vim.api.nvim_create_augroup("help_files", { clear = true }),
	pattern = "*",
	callback = function(event)
		if vim.bo[event.buf].filetype == "help" then
			vim.cmd.wincmd("L")
		end
	end,
})

-- vim.api.nvim_create_autocmd("winnew", {
-- 	group = vim.api.nvim_create_augroup("test", { clear = true }),
-- 	pattern = "TelescopePreviewerLoaded",
-- 	callback = function()
-- 		print(vim.api.nvim_buf_get_name(0))
-- 	end,
-- })

-- vim.api.nvim_create_autocmd("bufenter", {
-- 	group = vim.api.nvim_create_augroup("test", { clear = true }),
-- 	callback = function(event)
-- 		-- print(vim.api.nvim_buf_get_name(0))
-- 		local filetype = vim.bo[event.buf].filetype
-- 		print(filetype)
-- 		-- if vim.bo[event.buf].filetype == "help" then
-- 		-- 	print"pluh"
-- 		-- end
-- 	end,
-- })

-- */undotree_2
-- */diffpanel_3




-- local Greedy = vim.api.nvim_create_augroup('Greedy', { clear = true })
--
-- local main_win = 1000
-- local greedy_win
--
-- vim.keymap.set('n', '<leader>z', function ()
--   print(greedy_win)
-- end)
--
-- vim.api.nvim_create_autocmd('BufEnter', {
--   callback = function (event)
--     local win_list = vim.api.nvim_list_wins()
--
--     if #(win_list) == 1 then
--       if win_list[1] == main_win then
--         vim.schedule(function ()
--           vim.cmd( 'leftabove 84vnew' )
--           greedy_win = vim.api.nvim_list_wins()[1]
--           vim.cmd.wincmd('l')
--         end)
--         return
--       end
--
--       vim.cmd.quitall()
--       return
--     end
--
--     if #(win_list) == 3 then
--       local cur_win = win_list[vim.api.nvim_win_get_number(0)]
--
--       local buf = vim.api.nvim_win_get_buf(cur_win)
--       vim.api.nvim_win_set_buf(greedy_win, buf)
--
--       vim.schedule(function ()
--         if #(vim.api.nvim_list_wins()) == 3 then
--           vim.cmd.quit()
--           vim.cmd.wincmd('h')
--         end
--       end)
--       return
--     end
--   end,
--   group = Greedy,
-- })
