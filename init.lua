-- place in local appdata/nvim
-- eg C:\Users\john\AppData\Local\nvim

-- install paq
-- windows
-- git clone https://github.com/savq/paq-nvim.git "$env:LOCALAPPDATA\nvim-data\site\pack\paqs\start\paq-nvim"
-- linux 
-- git clone --depth=1 https://github.com/savq/paq-nvim.git \
--  "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim


vim.cmd('set tabstop=4')
vim.cmd('set shiftwidth=4')
vim.cmd('set expandtab')

-- relative line numbers in normal mode, regular line numbers in insert mode
vim.cmd('set relativenumber')
vim.cmd('autocmd InsertEnter * set norelativenumber')
vim.cmd('autocmd InsertEnter * set number')
vim.cmd('autocmd InsertLeave * set relativenumber')
vim.cmd('autocmd InsertLeave * set nonumber')

vim.g.mapleader = ' ';

require "paq" {
    "savq/paq-nvim";                  -- Let Paq manage itself

    "neovim/nvim-lspconfig";          -- Mind the semi-colons
    "hrsh7th/nvim-cmp";


    {"lervag/vimtex", opt=true};      -- Use braces when passing options

    "easymotion/vim-easymotion";
    "voldikss/vim-floaterm";
}

-- PaqInstall: Install all packages listed in your configuration.
-- PaqUpdate: Update all packages already on your system (it won't implicitly install them).
-- PaqClean: Remove all packages (in Paq's directory) that aren't listed on your configuration.
-- PaqSync: Execute the three operations listed above.

vim.keymap.set('n', "<leader>ft", ":FloatermNew --name=myfloat --height=0.8 --width=1.0 --autoclose=2 pwsh <CR>")

