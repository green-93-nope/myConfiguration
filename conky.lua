conky.config = {
    background = false,
    out_to_x = false,
    out_to_console = true,
    update_interval = 1,
    total_run_times = 0,
    if_up_strictness = address,
    override_utf8_locale = yes,
    cpu_avg_samples = 2,
    use_spacer = "none",
}

conky.text = [[
${if_up wlp3s0} \
  ${downspeed wlp3s0}/s \
  ${upspeed wlp3s0}/s \
  ${wireless_essid wlp3s0} ${addr wlp3s0}  \
${else}${if_up enp0s25}  \
  ${downspeed enp0s25}/s \
  ${upspeed enp0s25}/s \
  ${addr enp0s25}  \
${endif}${endif} \
  ${memperc}%  \
  ${hwmon temp 1}°  \
  ${cpu cpu0}%  \
  ${battery_short BAT1}   \
${time %Y/%m/%d %a}  \
${time %H:%M:%S}
]]
