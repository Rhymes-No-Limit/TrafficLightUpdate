import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    
    @IBOutlet var startButten: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorView.alpha = 0.5
        redColorView.layer.cornerRadius =
        redColorView.frame.width / 2
        redColorView.clipsToBounds = true
        yellowColorView.alpha = 0.5
        yellowColorView.layer.cornerRadius = yellowColorView.frame.width / 2
        yellowColorView.clipsToBounds = true
        greenColorView.alpha = 0.5
        greenColorView.layer.cornerRadius = greenColorView.frame.width / 2
        greenColorView.clipsToBounds = true
        
        startButten.layer.cornerRadius = 10
    }
    
    @IBAction func startButtonDidTapped(_ sender: UIButton) {
        if redColorView.alpha == 1 {
            yellowColorView.alpha = 1
            redColorView.alpha = 0.5
        } else if yellowColorView.alpha == 1 {
            greenColorView.alpha = 1
            yellowColorView.alpha = 0.5
        } else if greenColorView.alpha == 1 {
            redColorView.alpha = 1
            greenColorView.alpha = 0.5
        } else {
            redColorView.alpha = 1
            sender.setTitle("Next", for: .normal)
        }
    }
    
}

