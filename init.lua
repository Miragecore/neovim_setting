-- Tab 관련 설정
vim.opt.tabstop = 2         -- 탭 폭을 4 스페이스로 설정
vim.opt.shiftwidth = 2      -- 들여쓰기를 4 스페이스로 설정
vim.opt.expandtab = true    -- 탭을 스페이스로 변환

-- 줄 번호 관련 설정
vim.opt.number = true       -- 절대 줄 번호를 표시
vim.opt.relativenumber = true  -- 상대 줄 번호를 표시

-- 기타 유용한 설정
vim.opt.cursorline = true   -- 현재 줄 강조
vim.opt.wrap = true         -- 긴 줄을 자동으로 다음 줄로 감쌈
vim.opt.autoindent = true   -- 자동 들여쓰기
vim.opt.smartindent = true  -- 스마트 들여쓰기

require'lspconfig'.clangd.setup{
  cmd = { "/usr/bin/clangd-9" },  -- 여기 경로를 설치된 clangd 경로로 변경
}

--require'lspconfig'.pyright.setup{
--  cmd = {"/home/blackpanther/.local/bin/pyright-langserver", "--stdio"},
--}

require'lspconfig'.neocmakelsp.setup{}

require("config.lazy")


