import UIKit

class HomeViewController: UIViewController {

    let homeView = HomeView()
    
    override func loadView() {
        view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeView.setup(configuration: .init(message: "It's works, welcome!", formattedDate: getFormattedDate()))
    }
    
    private func getFormattedDate() -> String {
        let formatted = DateFormatter()
        formatted.dateFormat = "EEEE, dd 'de' MMMM, YYYY 'em:' HH:mm:ss"
        formatted.locale = Locale(identifier: "pt-br")
        return formatted.string(from: Date())
    }
}

