import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customAlert: UIView!
    @IBOutlet weak var ignoreButton: UIButton!
    @IBOutlet weak var gotItButton: UIButton!
    @IBOutlet weak var cookiesButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       configure()
    }
    
    //MARK: - UI Customization
    func configure() {
        customAlert.layer.cornerRadius = 20
        ignoreButton.layer.cornerRadius = 10
        gotItButton.layer.cornerRadius = 10
        cookiesButton.layer.cornerRadius = 20
        customAlert.alpha = 0
    }
    
    //MARK: - Button customization
    @IBAction func ignoreButtonPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            self.customAlert.alpha = 0
        }
        print("The ignore button was pressed")
    }
    
    @IBAction func gotItButtonPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            self.customAlert.alpha = 0
        }
        print("The Got It! button was pressed")
    }
    
    @IBAction func cookiesButtonPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            self.customAlert.alpha = 1
        }
    }
}
