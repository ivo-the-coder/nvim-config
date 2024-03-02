function danceWithMe()
  vim.cmd("colorscheme codedark")
end

function danceAlone()
  vim.cmd("colorscheme rose-pine")
end

vim.api.nvim_create_user_command('DanceWithMe', danceWithMe, { nargs='?' })
vim.api.nvim_create_user_command('DanceAlone', danceAlone, { nargs='?' })
