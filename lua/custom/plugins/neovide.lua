vim.g.neovide_input_use_logo = "v:true"
vim.g.neovide_cursor_vfx_mode = "sonicboom"

local keymapOpts = {
  silent = true,
  noremap = true
}
vim.keymap.set({ "n", "v" }, "<D-v>", "\"*p", keymapOpts)

--vim.opt.guifont={ "SpaceMono Nerd Font", ":h20" } 
--vim.opt.guifont={ "SauceCodePro Nerd Font Mono", ":h20" } 

vim.g.neovide_scale_factor = 1.0
function ChangeScaleFactor(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end
vim.keymap.set({ "n" }, "<D-=>",":lua ChangeScaleFactor(1.25)<CR>", keymapOpts)
vim.keymap.set({ "n" }, "<D-->", ":lua ChangeScaleFactor(1/1.25)<CR>", keymapOpts)

--vim.api.nvim_exec(
--[[
--  " Set transparency and background color (title bar color)
--  let g:neovide_transparency=0.0
--  let g:neovide_transparency_point=0.8
--  let g:neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:neovide_transparency_point))
--
--  " Add keybinds to change transparency
--  function! ChangeTransparency(delta)
--    let g:neovide_transparency_point = g:neovide_transparency_point + a:delta
--    let g:neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:neovide_transparency_point))
--  endfunction
--  noremap <expr><D-]> ChangeTransparency(0.01)
--  noremap <expr><D-[> ChangeTransparency(-0.01)
--]]
--,true)
return {}
