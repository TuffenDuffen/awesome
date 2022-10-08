-- Widget and layout library
local wibox = require("wibox")
-- Theme handling library
local beautiful = require("beautiful")
-- Vicious widget library
local vicious = require("vicious")

local baticon = wibox.widget {
    font = beautiful.icon_font .. beautiful.icon_size,
    markup = '<span color="' .. beautiful.icon_color ..'">\u{f0e7}</span> ',
    align = 'center',
    valign = 'center',
    widget = wibox.widget.textbox
}

local battext = wibox.widget.textbox()
vicious.cache(vicious.widgets.bat)
vicious.register(battext, vicious.widgets.bat, "$2%", 30, "BAT0")

local batwidget = wibox.widget {
    baticon,
    battext,
    wibox.widget.textbox(" "),
    layout = wibox.layout.fixed.horizontal
}
return batwidget