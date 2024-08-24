-- Tab 관련 설정
vim.opt.tabstop = 2         -- 탭 폭을 2 스페이스로 설정
vim.opt.shiftwidth = 2      -- 들여쓰기를 2 스페이스로 설정
vim.opt.expandtab = true    -- 탭을 스페이스로 변환

-- 줄 번호 관련 설정
vim.opt.number = true       -- 절대 줄 번호를 표시
vim.opt.relativenumber = true  -- 상대 줄 번호를 표시

-- 기타 유용한 설정
vim.opt.cursorline = true   -- 현재 줄 강조
vim.opt.wrap = true         -- 긴 줄을 자동으로 다음 줄로 감쌈
vim.opt.autoindent = true   -- 자동 들여쓰기
vim.opt.smartindent = true  -- 스마트 들여쓰기

vim.opt.textwidth = 75 
vim.opt.colorcolumn = "75" -- mac font size 13 - rf에서 3개 컬럼, fontsize 10

-- vim.o.foldmethod = 'syntax'
-- vim.o.foldlevelstart = 0


vim.g.mapleader = " "



local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>ft', builtin.tags, {})
vim.keymap.set('n', '<leader>mm', builtin.marks, {})
vim.keymap.set('n', '<leader>fr', builtin.registers, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})


require'lspconfig'.clangd.setup{
  cmd = { "/usr/bin/clangd-9" },  -- 여기 경로를 설치된 clangd 경로로 변경
}

--require'lspconfig'.pyright.setup{
--  cmd = {"/home/blackpanther/.local/bin/pyright-langserver", "--stdio"},
--}

require'lspconfig'.neocmakelsp.setup{}

require("config.lazy")
