local wezterm = require 'wezterm'
local act = wezterm.action

local colors = require 'themes.rose-pine.rose-pine'.colors()
local window_frame = require 'themes.rose-pine.rose-pine'.window_frame()

local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Config output history
config.scrollback_lines = 10000

-- Config colors
config.colors = colors
--config.bold_brightens_ansi_colors = true

-- Config font options
config.font = wezterm.font 'JetBrainsMono Nerd Font Mono'
config.font_size = 12

-- Config window defaults
if wezterm.target_triple:find("darwin") then
  wezterm.on("gui-startup", function(cmd)
    local screen = wezterm.gui.screens().active
    local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
    local gui = window:gui_window()
    local width = 0.9 * screen.width
    local height = 0.9 * screen.height
    gui:set_inner_size(width, height)
    gui:set_position((screen.width - width) / 2, (screen.height - height) / 2)
  end)
end
config.window_padding = {
  left = 15,
  right = 15,
  top = 15,
  bottom = 5,
}
config.macos_window_background_blur = 30
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_frame = window_frame
config.window_background_opacity = 0.95
config.window_close_confirmation = 'AlwaysPrompt'
config.adjust_window_size_when_changing_font_size = false

-- Config keybindings
config.leader = { key = 'b', mods = 'CTRL', timeout_milliseconds = 1000 }
config.keys = {
  { key = "phys:Space",   mods = "LEADER",    action = act.ActivateCommandPalette },
  -- Tab actions (switching)
  { key = "[",            mods = "LEADER",    action = act.ActivateTabRelative(-1) },
  { key = "]",            mods = "LEADER",    action = act.ActivateTabRelative(1) },
  { key = "t",            mods = "LEADER",    action = act.ShowTabNavigator },
  -- Tab actions (ordering)
  { key = "{",            mods = "LEADER|SHIFT",    action = act.MoveTabRelative(-1) },
  { key = "}",            mods = "LEADER|SHIFT",    action = act.MoveTabRelative(1) },
}

-- Disable annoyances
config.check_for_updates = false
config.hide_tab_bar_if_only_one_tab = true

return config
