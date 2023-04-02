local comment_installed, comment = pcall(require, "Comment")

if not comment_installed then
	print "Comment.nvim not installed :("
	return
end

local comment_configs =  {
	pre_hook = function(ctx)
		local utils = require "Comment.utils"
		local location = nil
		if ctx.ctype == utils.ctype.block then
			location = require("ts_context_commentstring.utils").get_visial_start_location()
		end

		return require("ts_context_commentstring.internal").calculate_commentstring {
			key = ctx.ctype == utils.ctype.line and "__defailt" or "__multiline",
			location = location
		}
	end,
}

comment.setup(comment_configs)
