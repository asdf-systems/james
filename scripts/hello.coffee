module.exports = (robot) ->
  robot.hear /(h(a|e)llo|hi|moin) James/i, (msg) ->
    msg.send "Einen wunderschönen Tag Meister!"

