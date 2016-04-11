import grails.plugins.rest.client.RestBuilder

class GameFormatService {

    String gameFormatQueryUrl

    def getGameFormats() {
        def rest = new RestBuilder()
        def json = rest.get(gameFormatQueryUrl).json
        def res = json.collect { format ->
            [
                    id: format.id,
                    type: format.type
            ]
        }
        res
    }

    def getGameFormat(Integer id) {
        def rest = new RestBuilder()
        def json = rest.get("${gameFormatQueryUrl}/${id}").json
        [
                id: json.id,
                type: json.type
        ]
    }

    def deleteGameFormat(Integer id) {
        def rest = new RestBuilder()
        rest.delete("${gameFormatQueryUrl}/${id}")
    }

    def createGameFormat(Map params) {
        def rest = new RestBuilder()
        rest.post(gameFormatQueryUrl) {
            contentType "application/json"
            accept "application/json"
            json {
                type = params.type
            }
        }
    }

    def updateGameFormat(Integer id, Map params) {
        def rest = new RestBuilder()
        rest.put("${gameFormatQueryUrl}/${id}") {
            contentType "application/json"
            accept "application/json"
            json {
                type = params.type
            }
        }
    }
}
