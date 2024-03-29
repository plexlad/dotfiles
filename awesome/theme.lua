-- Default

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

theme.font = "sans 8"

theme.bg_normal   = "#665c54"
theme.bg_focus    = "#bdae93"
theme.bg_urgent   = "#cc241d"
theme.bg_minimize = "#3c3836"
theme.bg_systray  = theme.bg_normal

theme.fg_normal   = "#bdae93"
theme.fg_focus    = "#d5c4a1"
theme.fg_urgent   = "#cc241d"
theme.fg_minimize = "#665c54"

theme.useless_gap   = dpi(9)
theme.border_width  = dpi(2)
theme.border_normal = "#665c54"
theme.border_focus  = "#bdae93"
theme.border_marked = "#989c1a"

local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_unsel(
	taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
	taglist_square_size, theme.fg_normal
)

theme.menu_submenu_icon = themes_path.."default/submenu.png"
theme.menu_height = dpi(8)
theme.menu_width  = dpi(100)

theme.titlebar_close_button_normal = themes_path.."default/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path.."default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive = themes_path.."default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active = themes_path.."default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_ontop_button_normal_inactive = themes_path.."default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive = themes_path.."default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."default/titlebar/sticky_normal_active.png"
theme.titlebar_active_button_focus_active = themes_path.."default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_ontop_button_normal_inactive = themes_path.."default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive = themes_path.."default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active = themes_path.."default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_ontop_button_normal_inactive = themes_path.."default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive = themes_path.."default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path.."default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active = themes_path.."default/titlebar/maximized_focus_active.png"

theme.wallpaper = themes_path.."default/background.png"

theme.layout_fairh = themes_path.."default/layouts/fairhw.png"
theme.layout_fairv = themes_path.."default/layouts/fairvw.png"
theme.layout_floating = themes_path.."default/layouts/floatingw.png"
theme.layout_magnifier = themes_path.."default/layouts/magnifierw.png"
theme.layout_max = themes_path.."default/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."default/layouts/fullscreenw.png"
theme.layout_tilebotton = themes_path.."default/layouts/tilebottomw.png"
theme.layout_tileleft = themes_path.."default/layouts/tileleftw.png"
theme.layout_tile = themes_path.."default/layouts/tilew.png"
theme.layout_tiletop = themes_path.."default/layouts/tiletopw.png"
theme.layout_spiral = themes_path.."default/layouts/spiralw.png"
theme.layout_dwindle = themes_path.."default/layouts/dwindlew.png"
theme.layout_cornernw = themes_path.."default/layouts/cornernww.png"
theme.layout_cornerwe = themes_path.."default/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."default/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."default/layouts/cornersew.png"

theme.awesome_icon = theme_assets.awesome_icon(
	theme.menu_height, theme.bg_focus, theme.fg_focus
)

theme.icon_theme = nil

return theme
