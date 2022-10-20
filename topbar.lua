-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")
-- Widget and layout library
local wibox = require("wibox")
-- Theme handling library
local beautiful = require("beautiful")
beautiful.init("/home/tuffen/.config/awesome/theme/theme.lua")

local topbar = {}

local mytextclock = wibox.widget.textclock()

local memwidget = require("widgets.memory")
local batwidget = require("widgets.battery")

function topbar.create(screen)
    local bar = awful.wibar({ position = "top", screen = screen })

    bar:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            screen.mylayoutbox,
            screen.mytaglist,
            screen.mypromptbox,
        },
        screen.mytasklist, -- Middle widget
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            memwidget,
            wibox.widget.systray(),
            batwidget,
            mytextclock,
        },
    }

    return bar
end

return topbar