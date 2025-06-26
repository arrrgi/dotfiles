local wezterm = require 'wezterm'
local act = wezterm.action

local theme = require('lua/rose-pine').main

local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Config output history
config.scrollback_lines = 10000

-- Config colors
config.colors = theme.colors()
--config.bold_brightens_ansi_colors = true

-- Config font options
config.font = wezterm.font 'JetBrainsMono Nerd Font Mono'
config.font_size = 12

-- Config window defaults
if wezterm.target_triple:find("darwin") then
  wezterm.on("gui-startup", function(cmd)
    local screen = wezterm.gui.screens().main
    local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
    local gui = window:gui_window()

    if screen.name == "DELL U3421WE" then
      -- Half-screen with padding for the Dell monitor
      local padding = 10 -- pixels
      local menu_bar_height = 25 -- pixels
      local width = (screen.width / 2) - (padding * 1.5)
      local height = screen.height - menu_bar_height - (padding * 2)
      local x = (screen.width / 2) + (padding / 2)
      local y = menu_bar_height + padding
      gui:set_inner_size(width, height)
      gui:set_position(x, y)
    elseif screen.name == "Built-in Retina Display" then
      -- Full screen for the built-in display
      gui:set_inner_size(screen.width, screen.height)
      gui:set_position(screen.x, screen.y)
    end

    -- Prevent the default window from opening as we have defined our own.
    return false
  end)
end
config.window_padding = {
  left = 15,
  right = 15,
  top = 27,
  bottom = 5,
}
config.macos_window_background_blur = 30
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_frame = theme.window_frame()
config.window_background_opacity = 0.9
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
