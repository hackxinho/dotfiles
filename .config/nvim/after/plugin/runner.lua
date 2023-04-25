vim.keymap.set('n', '<F10>', ':RunFile<CR>', { noremap = true, silent = false })

require('code_runner').setup({
  mode = "term",
  focus = true,
  startinsert = false,
  -- put here the commands by filetype
  filetype = {
		python = "python3 -u",
        cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
        javascript = "node",
		typescript = "deno run",
		rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
        go = "go run"
	},
})
