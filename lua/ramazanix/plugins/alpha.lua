return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"                                                                                       ",
			"                                                                                       ",
			"                                                                                       ",
			"  ______   ______   _____  ____    ______   ________   ______   _______  $$/  __    __ ",
			" /      \\ /      \\ /     \\/    \\  /      \\ /        | /      \\ /       \\ /  |/  \\  /  |",
			"/$$$$$$  |$$$$$$  |$$$$$$ $$$$  | $$$$$$  |$$$$$$$$/  $$$$$$  |$$$$$$$  |$$ |$$  \\/$$/ ",
			"$$ |  $$/ /    $$ |$$ | $$ | $$ | /    $$ |  /  $$/   /    $$ |$$ |  $$ |$$ | $$  $$<  ",
			"$$ |     /$$$$$$$ |$$ | $$ | $$ |/$$$$$$$ | /$$$$/__ /$$$$$$$ |$$ |  $$ |$$ | /$$$$  \\ ",
			"$$ |     $$    $$ |$$ | $$ | $$ |$$    $$ |/$$      |$$    $$ |$$ |  $$ |$$ |/$$/ $$  |",
			"$$/       $$$$$$$/ $$/  $$/  $$/  $$$$$$$/ $$$$$$$$/  $$$$$$$/ $$/   $$/ $$/ $$/   $$/ ",
			"                                                                                       ",
			"                                                                                       ",
			"                                                                                       ",
		}

		-- set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "📜 New File", "<cmd>ene<CR>"),
			dashboard.button("SPC ee", "🔮 Toggle Explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("SPC ff", "🔎 Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC fs", "👀 Find Word", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("SPC wr", "✨ Restore Session", "<cmd>SessionRestore<CR>"),
			dashboard.button("q", "🚑 Exit", "<cmd>qa<CR>"),
		}

		-- send config to alpha
		alpha.setup(dashboard.opts)

		-- disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
