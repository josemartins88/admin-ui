package admin.ui

class VenueController {

    def venueService
    def pitchService

    def index() {
        def venues = venueService.venues
        [venues: venues]
    }

    def show(Integer id) {
        def venue = venueService.getVenue(id)
        def pitches = []
        venue.pitchIdList.each {
            def pitch = pitchService.getPitch("${it}".toInteger())
            pitches.add(pitch)
        }
        [venue: venue, pitches: pitches]
    }

    def delete(Integer id) {
        venueService.deleteVenue(id)
        redirect(action: "index")
    }

    def create() {}

    def edit(Integer id) {
        def venue = venueService.getVenue(id)
        [venue: venue]
    }

    def update(Integer id) {
        venueService.updateVenue(id, params)
        redirect(action: "index")
    }

    def save() {
        venueService.createVenue(params)
        redirect(action: "index")
    }
}
