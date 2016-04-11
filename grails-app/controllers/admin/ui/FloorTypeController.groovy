package admin.ui

class FloorTypeController {

    def floorTypeService

    def index() {
        def floorTypes = floorTypeService.floorTypes
        [floorTypes: floorTypes]
    }

    def show(Integer id) {
        def floorType = floorTypeService.getFloorType(id)
        [floorType: floorType]
    }

    def delete(Integer id) {
        floorTypeService.deleteFloorType(id)
        redirect(action: "index")
    }

    def create() {}

    def edit(Integer id) {
        def floorType = floorTypeService.getFloorType(id)
        [floorType: floorType]
    }

    def update(Integer id) {
        floorTypeService.updateFloorType(id, params)
        redirect(action: "index")
    }

    def save() {
        floorTypeService.createFloorType(params)
        redirect(action: "index")
    }
}
