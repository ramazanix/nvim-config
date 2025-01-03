return {
	"gbprod/substitute.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local substitute = require("substitute")

		substitute.setup()

		local keymap = vim.keymap

		keymap.set("n", "s", substitute.operator, { desc = "substitute with motion" })
		keymap.set("n", "ss", substitute.line, { desc = "substitute line" })
		keymap.set("n", "S", substitute.eol, { desc = "substitute to end of line" })
		keymap.set("x", "s", substitute.visual, { desc = "substitute in visual mode" })
	end,
}
