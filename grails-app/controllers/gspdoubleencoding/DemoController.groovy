package gspdoubleencoding

class DemoController {

    def index() {
        def amp2 = '&'.encodeAsHTML()
        def amp1 = '&amp;'
        def model = [
                amp1: amp1,
                amp2: amp2
        ]

        render status: 200,
                model: model,
                view: 'demo'
    }
}
