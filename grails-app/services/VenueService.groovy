import grails.plugins.rest.client.RestBuilder

class VenueService {

    String venueQueryUrl

    def getVenues() {
        def rest = new RestBuilder()
        def json = rest.get(venueQueryUrl).json
        def res = json.collect { venue ->
            [
                    id: venue.id,
                    name: venue.name,
                    description: venue.description,
                    fullAddress: venue.fullAddress
            ]
        }
        res
    }

    def getVenue(Integer id) {
        def rest = new RestBuilder()
        def json = rest.get("${venueQueryUrl}/${id}").json
        [
                id: json.id,
                name: json.name,
                description: json.description,
                fullAddress: json.fullAddress,
                email: json.contact.email,
                telephone: json.contact.telephone,
                pitchIdList: json.pitches.id
        ]
    }

    def deleteVenue(Integer id) {
        def rest = new RestBuilder()
        rest.delete("${venueQueryUrl}/${id}")
    }

    def createVenue(Map params) {
        def rest = new RestBuilder()
        rest.post(venueQueryUrl) {
            contentType "application/json"
            accept "application/json"
            json {
                name = params.name
                description = params.description
                fullAddress = params.fullAddress
                contact = {
                    email = params.email
                    telephone = params.telephone
                }
            }
        }
    }

    def updateVenue(Integer id, Map params) {
        def rest = new RestBuilder()
        rest.put("${venueQueryUrl}/${id}") {
            contentType "application/json"
            accept "application/json"
            json {
                name = params.name
                description = params.description
                fullAddress = params.fullAddress
                contact = {
                    email = params.email
                    telephone = params.telephone
                }
            }
        }
    }

}
