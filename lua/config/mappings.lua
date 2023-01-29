-- <F1> help
-- <F2> vim-codepainter
-- <F3> vim-codepainter navigate
vim.keymap.set('n', '<leader>rl', ':set relativenumber!<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>li', ':set list! list?<CR>', {noremap = false, silent = true})
-- <F5> Ranger from toggleterm
vim.keymap.set('n', '<leader>a', ':NvimTreeFocus<CR>', {noremap = false, silent = true})
vim.keymap.set('n', '<leader><space>', ':NvimTreeToggle<CR>', {noremap = false, silent = true})
vim.keymap.set('n', '<leader>z', ':ZenMode<CR>', {noremap = false, silent = true})
vim.keymap.set('n', '<leader>nm', ':Dispatch npm start<CR>', {noremap = false, silent = true})
vim.keymap.set('n', '<leader>w', ':Dispatch! alacritty -e nvim <CR>', {noremap = false, silent = true})
-- Buffers
vim.keymap.set('n', '<leader>bd', ':BDelete this<CR>', {noremap = false, silent = true})
vim.keymap.set('n', '<leader>bda', ':BDelete! all<CR>', {noremap = false, silent = true})
vim.keymap.set('n', '<leader>bdh', ':BDelete! hidden<CR>', {noremap = false, silent = true})
vim.keymap.set('n', '<A-.>', '<Plug>(cokeline-focus-next)', {noremap = false, silent = true})
vim.keymap.set('n', '<A-,>', '<Plug>(cokeline-focus-prev)', {noremap = false, silent = true})
vim.keymap.set('n', '<A-:>', '<Plug>(cokeline-switch-next)', {noremap = false, silent = true})
vim.keymap.set('n', '<A-;>', '<Plug>(cokeline-switch-prev)', {noremap = false, silent = true})
for i = 1,9 do
  vim.keymap.set('n', ('<A-%s>'):format(i),      ('<Plug>(cokeline-focus-%s)'):format(i),  { silent = true })
end
-- Recenter after moving half a page
vim.keymap.set({'n'}, '<C-d>', '<C-d>zz')
vim.keymap.set({'n'}, '<C-f>', '<C-u>zz')
-- Git (Fugitive and Lazygit)
vim.keymap.set('n', '<leader>gf', ':20G<CR>', {noremap = false, silent = true})
-- Easy-align
vim.keymap.set('x', 'ga', '<Plug>(EasyAlign)', {noremap = false, silent = true})
vim.keymap.set('n', 'ga', '<Plug>(EasyAlign)', {noremap = false, silent = true})
-- exit to normal mode with jk or kj

vim.keymap.set({'i', 'v'}, 'jk', '<ESC>')
vim.keymap.set({'i', 'v'}, 'kj', '<ESC>')
-- diffview 
vim.keymap.set('n', '<leader>dv', '<cmd>DiffviewOpen<CR>', {noremap = true, silent = true})
-- LSP
vim.keymap.set('n', '<leader>,', ':lua vim.lsp.diagnostic.goto_prev()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>;', ':lua vim.lsp.diagnostic.goto_next()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>-- Git (Fugitive and Lazygit)', ':lua vim.lsp.diagnostic.code_action()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>de', ':lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<space>p', ':lua vim.lsp.buf.format()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>h', ':lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>m', ':lua vim.lsp.buf.rename()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>r', ':lua vim.lsp.buf.references()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>s', ':lua vim.lsp.buf.document_symbol()<CR>', {noremap = true, silent = true})
-- Spectre
vim.keymap.set('n', '<leader>sp', ":lua require('spectre').open()<CR>", {noremap = true, silent = true})
vim.keymap.set('v', '<leader>sp', ":lua require('spectre').open_visual()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>sl', "viw:lua require('spectre').open_file_search()<CR>", {noremap = true, silent = true})
-- Sad
vim.keymap.set('n', '<leader>sr', ":lua require('FTerm').run({'fd | sad', vim.fn.input('SEARCH -> '), vim.fn.input('REPLACE -> ')})<CR>", {noremap = true, silent = true})
-- Telescope
vim.keymap.set('n', '<leader>r', ":lua require('telescope.builtin').live_grep()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>#', ":lua require('telescope.builtin').grep_string()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>bb', ":lua require('config.plugins.telescope').my_buffers()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>ts', ":lua require('telescope.builtin').treesitter()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>l', ":lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>f', ":lua require('telescope.builtin').find_files()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>fp', ":lua require('config.plugins.telescope').project_files()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>pp', ":lua require'telescope'.extensions.repo.list{file_ignore_patterns={'/%.cache/', '/%.cargo/', '/%.local/', '/%.asdf/', '/%.zinit/', '/%.tmux/'}}<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>c', ":lua require('config.plugins.telescope').my_git_commits()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>g', ":lua require('config.plugins.telescope').my_git_status()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>b', ":lua require('config.plugins.telescope').my_git_bcommits()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>ns', ":lua require('config.plugins.telescope').my_note()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>nn', ":lua NewNote()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>y', ':Telescope neoclip<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>ll', ":lua require('telescope.builtin').grep_string({ search = vim.fn.input('GREP -> ') })<CR>", {noremap = true, silent = true})
-- HlsLens
vim.keymap.set('n', 'n', "<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>", { noremap = true, silent = true })
vim.keymap.set('n', 'N', "<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>", { noremap = true, silent = true })
-- Trouble
vim.keymap.set('n', '<leader>to', ':TodoTrouble  keywords=TODO,FIX,FIXME<CR>', {noremap = true, silent = true})
vim.keymap.set("n", "<leader>tr", "<cmd>TroubleToggle<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>tw", "<cmd>Trouble workleader_diagnostics<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>td", "<cmd>Trouble document_diagnostics<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>tll", "<cmd>Trouble loclist<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>tq", "<cmd>Trouble quickfix<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>tl", "<cmd>Trouble lsp_references<cr>", {silent = true, noremap = true})
-- Notes & Todo
vim.keymap.set('n', '<leader>tv', ":lua require('util.scratches').open_scratch_file()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>t', ":lua require('util.scratches').open_scratch_file_floating()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>n', ":lua require('config.plugins.telescope').my_note()<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>nn', ":lua NewNote()<CR>", {noremap = true, silent = true})
