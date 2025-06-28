local snippets = require("snippets")

local function insert_snippet(snippet)
	local lines = vim.split(snippet, "\n")
	vim.api.nvim_put(lines, "l", true, true)
end

local function show_snippet_picker()
	local items = {}
	local keys = {}

	for key, snip in pairs(snippets) do
		table.insert(items, key .. ": " .. snip.name)
		keys[#items] = key
	end

	vim.ui.select(items, { prompt = "Select a snippet:" }, function(choice, idx)
		if choice then
			local key = keys[idx]
			insert_snippet(snippets[key].value)
		end
	end)
end

vim.api.nvim_create_user_command("Snip", show_snippet_picker, {})
