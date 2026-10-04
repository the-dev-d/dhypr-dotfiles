

local terminal    = "kitty --override background_opacity=0.7"
local fileManager = "dolphin"
local menu        = "rofi -show drun -show-icons"
local runner	  = "rofi -show run"


local mainMod = "SUPER" -- Sets "Windows" key as main modifier
local secondMod = "SUPER + ALT"
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))

local closeWindowBind = hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(secondMod .. " + V", hl.dsp.window.float({ action = "toggle" }))

hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd(menu))
hl.bind(secondMod .. " + Space", hl.dsp.exec_cmd(runner))

hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
-- hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only

hl.bind(mainMod .. " + left",  hl.dsp.layout("focus l"))
hl.bind(mainMod .. " + right", hl.dsp.layout("focus r"))
hl.bind(mainMod .. " + up",    hl.dsp.layout("focus u"))
hl.bind(mainMod .. " + down",  hl.dsp.layout("focus d"))

hl.bind("ALT + TAB ", hl.dsp.layout("focus r"))
hl.bind("ALT + SHIFT + TAB ", hl.dsp.layout("focus l"))

hl.bind(mainMod .. " + equal", hl.dsp.layout("colresize +conf"))
hl.bind(mainMod .. " + minus", hl.dsp.layout("colresize -conf"))

hl.bind(secondMod .. " + F", hl.dsp.layout("fit expand"))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))

hl.bind(secondMod .. " + left", hl.dsp.window.move({ direction = "l" }))
hl.bind(secondMod .. " + right", hl.dsp.window.move({ direction = "r" }))
hl.bind(secondMod .. " + up", hl.dsp.window.move({ direction = "u" }))
hl.bind(secondMod .. " + down", hl.dsp.window.move({ direction = "d" }))

hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("swaync-client -t"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("/home/the-dev-d/.local/bin/clipmark"))
hl.bind("Print", hl.dsp.exec_cmd("hyprshot -m region"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,        hl.dsp.focus({ workspace = i}))
    hl.bind(secondMod .. "  + " .. key,     hl.dsp.window.move({ workspace = i, follow=false}))
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",  hl.dsp.workspace.toggle_special("magic"))
hl.bind(secondMod .. " + S",    hl.dsp.window.move({ workspace = "special:magic", follow=false }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

hl.bind(mainMod .. " + w", hl.dsp.exec_cmd("qs -p ~/.config/quickshell/workspace-overview/"))
