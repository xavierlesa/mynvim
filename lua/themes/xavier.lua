-- load the 'habamax' colorscheme
vim.cmd('runtime colors/habamax.vim')

local M = {}

M.colors = {
    bg = '#131313',
    fg = '#cdd6f4',
    red = '#f38ba8',
    green = '#a6e3a1',
    yellow = '#f9e2af',
    blue = '#89b4fa',
    magenta = '#cba6f7',
    cyan = '#94e2d5',
    white = '#cdd6f4',
    mute = '#303030',
    mutedark = '#000000',
}

function M.setup()
    -- vim.cmd('highlight Normal guibg=' .. M.colors.bg .. ' guifg=' .. M.colors.fg)--[[
    -- vim.cmd('highlight Comment guifg=' .. M.colors.blue .. ' gui=italic')
    -- vim.cmd('highlight Identifier guifg=' .. M.colors.magenta)
    -- vim.cmd('highlight Statement guifg=' .. M.colors.red .. ' gui=bold')--]]

    -- change the color of statements
    vim.api.nvim_set_hl(0, 'Normal', { bg = M.colors.bg })
    -- vim.api.nvim_set_hl(0, 'Comment', { fg = M.colors.mute, italic = true })
    -- vim.api.nvim_set_hl(0, 'CursorLine', { bg = M.colors.mutedark })
    -- vim.api.nvim_set_hl(0, 'CursorColumn', { bg = M.colors.mutedark })

end

--[[ Register as a colorscheme
vim.api.nvim_create_user_command('colorscheme_xavier', function()
    M.setup()
end, {})
--]]

return M
-- vim: foldmethod=marker foldmarker=--[[,--]]
