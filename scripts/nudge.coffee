module.exports = (robot) ->
  robot.respond /(nudge|hol|nerv|hau)( mal?)?( den)?(.+)/i, (msg) ->
    sender_name = msg.message.user.name;
    # Hackety-Hack-Hack
    msg.message.user.room = msg.match[4].trim()

    msg.send "*"+msg.match[1].trim()+"* (Im Namen von "+sender_name+")"

