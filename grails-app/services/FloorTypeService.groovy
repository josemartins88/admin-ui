import grails.plugins.rest.client.RestBuilder

class FloorTypeService {

    String floorTypeQueryUrl

    def getFloorTypes() {
        def rest = new RestBuilder()
        def json = rest.get(floorTypeQueryUrl).json
        def res = json.collect { floorType ->
            [
                    id: floorType.id,
                    type: floorType.type,
                    description: floorType.description
            ]
        }
        res
    }

    def getFloorType(Integer id) {
        def rest = new RestBuilder()
        def json = rest.get("${floorTypeQueryUrl}/${id}").json
        [
                id: json.id,
                type: json.type,
                description: json.description
        ]
    }

    def deleteFloorType(Integer id) {
        def rest = new RestBuilder()
        rest.delete("${floorTypeQueryUrl}/${id}")
    }

    def createFloorType(Map params) {
        def rest = new RestBuilder()
        rest.post(floorTypeQueryUrl) {
            contentType "application/json"
            accept "application/json"
            json {
                type = params.type
                description = params.description
            }
        }
    }

    def updateFloorType(Integer id, Map params) {
        def rest = new RestBuilder()
        rest.put("${floorTypeQueryUrl}/${id}") {
            contentType "application/json"
            accept "application/json"
            json {
                type = params.type
                description = params.description
            }
        }
    }
}
