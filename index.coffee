request = require "request"

module.exports = (execServer) ->
    (req, res) ->
        request.post(
            uri: "http://#{execServer}/exec"
            json: true
            form:
                code: req.body.code
        , (error, response, body) ->
            res.send(body)
        )


