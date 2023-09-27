import UIKit


class ResultViewController: UIViewController {
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiValueText: UILabel!
    var bmiValue = "0.0"
    var advice :String?
    var color :UIColor?
    
   
    override func viewDidLoad() {
        bmiValueText.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
   
    

  
   
    
    
    
   
    @IBAction func RecalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
    
    
}

