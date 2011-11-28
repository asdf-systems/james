module.exports = (robot) ->
  imgstore = 'http://www.asdf-systems.de/jamesimages'

  imageMe = (msg, query, cb) ->
    msg.http("#{imgstore}/index.json")
      .query(v: "1.0", rsz: '8')
      .get() (err, res, body) ->
        query = query.toLowerCase()
        images = JSON.parse(body)
        image = (image.img for image in images when query in image.tags)
        if image.length > 0
          cb "#{imgstore}/img/#{image}"

  robot.respond /show( me)? (.*)/i, (msg) ->
    if msg.match[2] == "list"
      msg.send "#{imgstore}/index.html"
    else
      imageMe msg, msg.match[2], (url) ->
        msg.send url

