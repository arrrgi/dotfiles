local wezterm = require 'wezterm'
local act = wezterm.action

local colors = require 'themes.rose-pine.rose-pine'.colors()
local window_frame = require 'themes.rose-pine.rose-pine'.window_frame()

local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Config colors
config.colors = colors

-- Config font options
config.font = wezterm.font 'JetBrainsMono Nerd Font Mono'
config.font_size = 12

-- Config window defaults
config.initial_rows = 77
config.initial_cols = 430
config.window_padding = {
  left = 15,
  right = 15,
  top = 15,
  bottom = 5,

}
config.window_decorations = 'RESIZE'
config.window_frame = window_frame
config.window_background_opacity = 0.95
config.macos_window_background_blur = 30
config.window_close_confirmation = 'AlwaysPrompt'

-- Disable annoyances
config.check_for_updates = false
config.hide_tab_bar_if_only_one_tab = true

return config
