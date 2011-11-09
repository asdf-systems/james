module.exports = (robot) ->
  robot.hear /(f(i|u)ck|arsch|sack|maul)/i, (msg) ->
    msg.send "Ihr habt 'nen ganz schön rüden Umgangston"

