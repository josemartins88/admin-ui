import grails.plugins.rest.client.RestBuilder

class PitchService {

    String pitchQueryUrl

    def getPitch(Integer id) {
        def rest = new RestBuilder()
        def json = rest.get("${pitchQueryUrl}/${id}").json
        [
                id: json.id,
                name: json.name,
                description: json.description,
                length: json.length,
                width: json.width,
                pricePerHour: json.pricePerHour,
                bibsIncluded: json.bibsIncluded,
                ballIncluded: json.ballIncluded,
                showersIncluded: json.showersIncluded,
                latitude: json.latitude,
                longitude: json.longitude,
                city: json.city,
                gameFormatId: json?.format?.id,
                gameFormatType: json?.format?.type,
                floorTypeId: json?.floorType?.id,
                floorTypeName: json?.floorType?.type,
                floorTypeDescription: json?.floorType?.description,
                venueId: json.venue.id
        ]
    }

    def deletePitch(Integer id) {
        def rest = new RestBuilder()
        rest.delete("${pitchQueryUrl}/${id}")
    }

    def createPitch(Map params) {
        def rest = new RestBuilder()
        rest.post(pitchQueryUrl) {
            contentType "application/json"
            accept "application/json"
            json {
                name = params.name
                description = params.description
                length = params.length
                width = params.width
                pricePerHour = params.pricePerHour
                bibsIncluded = params?.bibsIncluded ? true : false
                ballIncluded = params?.ballIncluded  ? true : false
                showersIncluded = params?.showersIncluded  ? true : false
                latitude = 100
                longitude = 100
                city = params.city
                floorType = {id = params.floorTypeId}
                format = {id = params.gameFormatId}
                venue = {id = params.venueId}
            }
        }
    }

    def updatePitch(Integer pitchId, Map params) {
        def rest = new RestBuilder()
        rest.put("${pitchQueryUrl}/${pitchId}") {
            contentType "application/json"
            accept "application/json"
            json {
                name = params.name
                description = params.description
                length = params.length
                width = params.width
                pricePerHour = params.pricePerHour
                bibsIncluded = params?.bibsIncluded ? true : false
                ballIncluded = params?.ballIncluded  ? true : false
                showersIncluded = params?.showersIncluded  ? true : false
                city = params.city
                floorType = {id = params.floorTypeId}
                format = {id = params.gameFormatId}
            }
        }
    }

}
