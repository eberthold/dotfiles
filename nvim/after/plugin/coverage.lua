require("coverage.languages.cs")
require("coverage").setup({
	commands = true,
	auto_reload = true,
	auto_reload_timeout_ms = 500,
	lang = {
		cs = {
			coverage_file = "TestResults/lcov.info",
		}
	}
})
