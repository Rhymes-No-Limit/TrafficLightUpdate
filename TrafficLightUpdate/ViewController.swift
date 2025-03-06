import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorView.alpha = lightIsOff
        yellowColorView.alpha = lightIsOff
        greenColorView.alpha = lightIsOff
        
        redColorView.layer.cornerRadius = redColorView.frame.width / 2
        yellowColorView.layer.cornerRadius = yellowColorView.frame.width / 2
        greenColorView.layer.cornerRadius = greenColorView.frame.width / 2
        
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func startButtonDidTapped(_ sender: UIButton) {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenColorView.alpha = lightIsOff
            redColorView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redColorView.alpha = lightIsOff
            yellowColorView.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowColorView.alpha = lightIsOff
            greenColorView.alpha = lightIsOn
            currentLight = .red
        }
    }
    
}

extension ViewController {
    private enum CurrentLight {
        case red, yellow, green
    }
}
