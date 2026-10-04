
------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "",
    mode     = "1920x1080@60",
    position = "0x0",
    scale    = "1",
    icc      = "/home/the-dev-d/.config/display/LEN40A9_02.icm"
})

hl.monitor({
    output   = "desc:BNQ BenQ GW2791 P4T0122301Q",
    mode     = "preferred",
    position = "1920x-220@60",
    scale    = "1",
})
hl.monitor({
	output = "desc:LG Electronics LG FHD 508TFUY02006",
	mode = "preferred", 
	position = "-1920x-540",
	scale = "1"
})
