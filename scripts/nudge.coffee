module.exports = (robot) ->
  robot.respond /(nudge|hol|nerv?|hau)( mal?)?( den)?(.+)/i, (msg) ->
    # Hackety-Hack-Hack
    msg.message.user.room = msg.match[4].trim()

    msg.send "*"+msg.match[1].trim()+"*"

