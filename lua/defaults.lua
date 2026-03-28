-- Colores por defecto (en caso que no cargar un theme)
-- default, habamax, slate, lunaperche
-- require("themes.xavier").setup()
-- vim.cmd.colorscheme("retrobox")
-- vim.cmd.colorscheme("lunaperche")

-- fallbakc, el otro color esta en lazy post install
vim.cmd.colorscheme("lunaperche")
vim.cmd("highlight Statement guifg=#f9e2af")
vim.api.nvim_set_hl(0, "Normal", { bg = "#202020" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "#303030" })  -- ventanas no activas
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#363636" }) -- popups/floats

-- Columna a los 100
vim.opt.colorcolumn = "100"

-- Usar NerdFonts (poner true si lo tengo instalado)
vim.g.have_nerd_font = true
vim.g.netrw_browsex_viewer = "open"

-- Mapea el leader como <space> " "
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Insensitivo al buscar
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Opciones de resaltado en el editor
-- ver `:help 'list'`
-- and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = {
	tab = "  ",
	nbsp = "␣",
}

-- No crear un swaptfile o tmp
vim.opt.swapfile = false

-- Ver numeros relativos y scroll sin margen
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 0

-- Mouse en todos los modos `a`
-- Ver `:help 'mouse'`
vim.opt.mouse = "a"

-- Solo si tengo status lines
-- vim.opt.showmode = false

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Split a la derecha
vim.opt.splitright = true

-- Autoindent
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true

-- Clipboard `:help 'clipboard'`
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true
