
hl.workspace_rule({ workspace = "1", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "2", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "3", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "4", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "5", monitor = "eDP-1" })

hl.workspace_rule({ workspace = "6", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace =	"7", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace =	"8", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace =	"9", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace =	"10", monitor = "HDMI-A-1" })



local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
  name = "nautilus",
  match = { class = "org.gnome.Nautilus" },
  opacity = 0.8 
})

hl.layer_rule({
	name = "swaync-blur",
	match = { namespace = "swaync-control-center" },

	blur = true,
	ignore_alpha=0.5 
})

hl.layer_rule({
        name = "swaync-notification-blur",
        match = { namespace = "swaync-notification-window" },

       	blur = true,
       	ignore_alpha=0.5
})

hl.layer_rule({
       	name = "waybar-blur",
        match = { namespace = "waybar" },

        blur = true,
       	ignore_alpha=0.5
})

hl.layer_rule({
       	name = "rofi-blur",
        match = { namespace = "rofi" },

        blur = true,
       	ignore_alpha=0
})

hl.layer_rule({
  name = "quickshell-blur",
  match = { namespace = "quickshell" },
  blur = true,
  ignore_alpha = 0
})
