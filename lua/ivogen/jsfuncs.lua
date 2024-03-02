function addJSNamedCallback(name, subject) 
  local lineNumber = vim.api.nvim_win_get_cursor(0)[1]
  local currentLine = vim.api.nvim_buf_get_lines(0, lineNumber - 1, lineNumber, true)[1]
  local leadingWhitespace = string.match(currentLine, "^ *")
  local lines = {
    leadingWhitespace .. name .. "(" .. (subject and "'" .. subject .. "', " or "") .. "() => {",
    leadingWhitespace .. '  ',
    leadingWhitespace .. '});'
  }
  vim.api.nvim_buf_set_lines(0, lineNumber, lineNumber, false, lines) 
  vim.api.nvim_win_set_cursor(0, {lineNumber + 2, #leadingWhitespace + 2})
end
function addDescribeBlock(opts) 
  local subject = opts['args'] or ''
  addJSNamedCallback('describe', subject)
end
vim.api.nvim_create_user_command('Describe', addDescribeBlock, { nargs='?' })
function addItBlock(opts) 
  local subject = opts['args'] or ''
  addJSNamedCallback('it', subject)
end
vim.api.nvim_create_user_command('It', addItBlock, { nargs='?' })
function addBeforeBlock(opts) 
  addJSNamedCallback('before', false)
end
vim.api.nvim_create_user_command('Before', addBeforeBlock, { nargs='?' })
function addBeforeEachBlock(opts) 
  local subject = opts['args'] or ''
  addJSNamedCallback('beforeEach', false)
end
vim.api.nvim_create_user_command('BeforeEach', addBeforeEachBlock, { nargs='?' })
