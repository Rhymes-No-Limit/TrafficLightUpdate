import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorView.alpha = 0.5
        yellowColorView.alpha = 0.5
        greenColorView.alpha = 0.5
    }

}

