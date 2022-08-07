-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")
-- Widget and layout library
local wibox = require("wibox")
-- Theme handling library
local beautiful = require("beautiful")
-- Vicious widget library
local vicious = require("vicious")

local memwidget = wibox.widget{
    widget = wibox.widget.textbox
}
vicious.cache(vicious.widgets.mem)
vicious.register(memwidget, vicious.widgets.mem, "$1% | $5%", 10)
return memwidget