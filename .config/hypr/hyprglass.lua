if hl.plugin.hyprglass then
    local hg = hl.plugin.hyprglass

    hg.config({
        default_theme = "dark",
        default_preset = "glass",
        brightness = 0.9,
        dark = { brightness = 1 },
        light = { adaptive_boost = 0.5 },
        layers = { enabled = true },
    })

    hg.layer("waybar", { mask_threshold = 0.05 })
    hg.layer("swaync-control-center", { })
    hg.layer("swaync-notification-window", {  })
    hg.layer("quickshell", { mask_threshold = 0.05, preset = "glass-dim" })
    hg.layer("debug-panel", { exclude = true })
    hg.layer("rofi", { preset="glass-dim" })

    hg.preset("glass", {
        blur_strength        = 1.8,
        blur_iterations      = 3,
        refraction_strength  = 3,
        chroma_aberration    = 0.05,
        fresnel_strength     = 0.4,
        specular_strength    = 0.4,
        edge_thickness       = 0.08,
        lens_distortion      = 1.5,
        dark = { brightness = 1.2, contrast = 1.3, saturation = 0.90, vibrancy = 0.15, adaptive_dim = 0.2 },
        light = { brightness = 1.12, contrast = 0.92, saturation = 0.85, vibrancy = 0.12, adaptive_boost = 0.2 },
    })

    hg.preset("glass-dim", {
        blur_strength        = 1.8,
        blur_iterations      = 3,
        refraction_strength  = 3,
        chroma_aberration    = 0.05,
        fresnel_strength     = 0.4,
        specular_strength    = 0.4,
        edge_thickness       = 0.08,
        lens_distortion      = 1.5,
        dark = { brightness = 1.2, contrast = 1.3, saturation = 0.90, vibrancy = 0.15, adaptive_dim = 0.4 },
        light = { brightness = 1.12, contrast = 0.92, saturation = 0.85, vibrancy = 0.12, adaptive_boost = 0.2 },
    })
end
