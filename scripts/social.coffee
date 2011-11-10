module.exports = (robot) ->
  robot.hear /(f(i|u)ck|arsch|sack|maul)/i, (msg) ->
    msg.send "Ihr habt 'nen ganz schön rüden Umgangston"

  robot.hear new RegExp("(h(a|e)llo|hi|moin|tach|tag|morgen|abend),? "+robot.name, "i"), (msg) ->
    msg.send "Einen wunderschönen Tag, Meister!"

  robot.hear /(ciao|tsch(ü|ue)ss|bye)/i, (msg) ->
    msg.send "Auf Wiedersehen!"

