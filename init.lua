--[[ Minimal neovim config
http://github.com/xavierlesa/xnvim.git
--]]

require("defaults")
require("helpers")
require("keymaps")
require("config.lazy")

-- Configura para el buf de este archivo el 'modeline'
-- ver `:help 'modeline'`
--
-- ts=2    -- tabstop
-- sts=2   -- softstabstop
-- sw=2    -- swiftwidth
-- vim: ts=2 sts=2 sw=2 et
-- vim: foldmethod=marker foldmarker=--[[,--]]
