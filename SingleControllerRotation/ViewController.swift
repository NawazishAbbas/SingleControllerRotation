import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        appDelegate.deviceOrientation = .portrait
        let value = UIInterfaceOrientation.portrait.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
    }
    
    @IBAction func presentButtonPress(sender: UIButton) {
        
        let targetController =  self.storyboard!.instantiateViewController(withIdentifier: "PresentedViewController") as! PresentedViewController
        self.navigationController?.pushViewController(targetController, animated: true)
        
    }
}
