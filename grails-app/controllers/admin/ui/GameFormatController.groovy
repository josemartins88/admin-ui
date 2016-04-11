package admin.ui

class GameFormatController {

    def gameFormatService

    def index() {
        def gameFormats = gameFormatService.gameFormats
        [gameFormats: gameFormats]
    }

    def show(Integer id) {
        def gameFormat = gameFormatService.getGameFormat(id)
        [gameFormat: gameFormat]
    }

    def delete(Integer id) {
        gameFormatService.deleteGameFormat(id)
        redirect(action: "index")
    }

    def create() {}

    def edit(Integer id) {
        def gameFormat = gameFormatService.getGameFormat(id)
        [gameFormat: gameFormat]
    }

    def update(Integer id) {
        gameFormatService.updateGameFormat(id, params)
        redirect(action: "index")
    }

    def save() {
        gameFormatService.createGameFormat(params)
        redirect(action: "index")
    }
}
