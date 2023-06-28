local M = {}

M.compute_filters = function(filetype)
	local filetype_table = {
		javascript = function(cli)
			return cli.name == "null-ls"
		end,
		javascriptreact = function(cli)
			return cli.name == "null-ls"
		end,
		typescript = function(cli)
			return cli.name == "null-ls"
		end,
		typescriptreact = function(cli)
			return cli.name == "null-ls"
		end,
		lua = function(cli)
			return cli.name == "null-ls"
		end,
		vue = function(cli)
			return cli.name == "null-ls"
		end,
		go = function(cli)
			return cli.name == "gopls"
		end,
		json = function(cli)
			return cli.name == "null-ls"
		end,
	}

	if filetype_table[filetype] ~= nil then
		return filetype_table[filetype]
	end

	return nil
end

return M
