return {
	"echasnovski/mini.comment",
	version = "*",
	config = function()
		require("mini.comment").setup({
			options = {
				custom_commentstring = function()
					local fname = vim.api.nvim_buf_get_name(0)
					if fname:match("%.sql$") then
						return "--%s"
					end
					return nil
				end,
			},
		})
	end,
}
