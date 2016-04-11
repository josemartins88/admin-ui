package admin.ui

class PitchController {

    def pitchService
    def gameFormatService
    def floorTypeService

    def show(Integer id) {
        def pitch = pitchService.getPitch(id)
        [pitch: pitch]
    }

    def delete(Integer id, Integer venueId) {
        pitchService.deletePitch(id)
        redirect(controller: "venue", action: "show", id: venueId)
    }

    def create(Integer id) {
        def gameFormats = gameFormatService.gameFormats
        def floorTypes = floorTypeService.floorTypes
        [gameFormats : gameFormats, floorTypes: floorTypes, venueId: id]
    }

    def edit(Integer id) {
        def pitch = pitchService.getPitch(id)
        def gameFormats = gameFormatService.gameFormats
        def floorTypes = floorTypeService.floorTypes
        [pitch: pitch, gameFormats : gameFormats, floorTypes: floorTypes]
    }

    def update(Integer id) {
        pitchService.updatePitch(id, params)
        redirect(controller: "venue", action: "show", id: params.venueId)
    }

    def save() {
        pitchService.createPitch(params)
        redirect(controller: "venue", action: "show", id: params.venueId)
    }

}
