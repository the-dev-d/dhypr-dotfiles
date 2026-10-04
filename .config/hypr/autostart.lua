
hl.on("hyprland.start", function()
    hl.exec_cmd("awww-daemon")
    --hl.exec_cmd("waybar")
    hl.exec_cmd("hyprpm reload -n")
    hl.exec_cmd("qs -p /home/the-dev-d/.config/quickshell/notch/")
    hl.exec_cmd("swaync")
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
    --hl.exec_cmd("systemctl --user start graphical-session.target")
end)

hl.on("hyprland.start", function()
    hl.exec_cmd("systemctl --user start hyprland-session.target")
end)

hl.on("hyprland.shutdown", function()
    os.execute("systemctl --user stop hyprland-session.target && sleep 0.1")
end)
