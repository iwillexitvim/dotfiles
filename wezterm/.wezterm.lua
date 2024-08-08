-- Pull in the wezterm API

local wezterm = require("wezterm")

-- This will hold the configuration.

local config = wezterm.config_builder()

config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.9

-- Github theme
-- github_dark_default
config.colors = {
	background = "#0d1117",
	foreground = "#e6edf3",

	cursor_bg = "#e6edf3",
	cursor_border = "#e6edf3",
	cursor_fg = "#0d1117",

	selection_bg = "#1e4273",
	selection_fg = "#e6edf3",

	ansi = { "#484f58", "#ff7b72", "#3fb950", "#d29922", "#58a6ff", "#bc8cff", "#39c5cf", "#b1bac4" },
	brights = { "#6e7681", "#ffa198", "#56d364", "#e3b341", "#79c0ff", "#d2a8ff", "#56d4dd", "#ffffff" },
}

-- github_dark_dimmed
-- config.colors = {
-- 	background = "#22272e",
-- 	foreground = "#adbac7",
--
-- 	cursor_bg = "#adbac7",
-- 	cursor_border = "#adbac7",
-- 	cursor_fg = "#22272e",
--
-- 	selection_bg = "#2e4c77",
-- 	selection_fg = "#adbac7",
--
-- 	ansi = { "#545d68", "#f47067", "#57ab5a", "#c69026", "#539bf5", "#b083f0", "#39c5cf", "#909dab" },
-- 	brights = { "#636e7b", "#ff938a", "#6bc46d", "#daaa3f", "#6cb6ff", "#dcbdfb", "#56d4dd", "#cdd9e5" },
-- }
--

-- github_dark
-- config.colors = {
-- 	background = "#30363d",
-- 	foreground = "#e6edf3",
--
-- 	cursor_bg = "#e6edf3",
-- 	cursor_border = "#e6edf3",
-- 	cursor_fg = "#30363d",
--
-- 	selection_bg = "#33588a",
-- 	selection_fg = "#e6edf3",
--
-- 	ansi = { "#484f58", "#ff7b72", "#3fb950", "#d29922", "#58a6ff", "#bc8cff", "#39c5cf", "#b1bac4" },
-- 	brights = { "#6e7681", "#ffa198", "#56d364", "#e3b341", "#79c0ff", "#d2a8ff", "#56d4dd", "#ffffff" },
-- }

local wezterm_config_nvim = wezterm.plugin.require("https://github.com/winter-again/wezterm-config.nvim")

wezterm.on("user-var-changed", function(window, pane, name, value)
	local overrides = window:get_config_overrides() or {}
	overrides = wezterm_config_nvim.override_user_var(overrides, name, value)
	window:set_config_overrides(overrides)
end)

return config
