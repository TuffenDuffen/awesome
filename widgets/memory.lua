-- Widget and layout library
local wibox = require("wibox")
-- Theme handling library
local beautiful = require("beautiful")
-- Vicious widget library
local vicious = require("vicious")

local memicon = wibox.widget {
    font = beautiful.icon_font .. beautiful.icon_size,
    markup = ' <span color="' .. beautiful.icon_color ..'">\u{f538}</span> ',
    align = 'center',
    valign = 'center',
    widget = wibox.widget.textbox
}

local swapicon = wibox.widget {
    font = beautiful.icon_font .. beautiful.icon_size,
    markup = ' <span color="' .. beautiful.icon_color ..'">\u{f2f1}</span> ',
    align = 'center',
    valign = 'center',
    widget = wibox.widget.textbox
}

local memtext = wibox.widget { widget = wibox.widget.textbox }
local swaptext = wibox.widget { widget = wibox.widget.textbox }

vicious.cache(vicious.widgets.mem)
vicious.register(memtext, vicious.widgets.mem, "$1%", 10)
vicious.register(swaptext, vicious.widgets.mem, "$5%", 20)

local memwidget = wibox.widget {
    memicon,
    memtext,
    swapicon,
    swaptext,
    wibox.widget.textbox(" "),
    layout = wibox.layout.fixed.horizontal
}
return memwidget