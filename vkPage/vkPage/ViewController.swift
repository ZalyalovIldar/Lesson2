import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userPhoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userPhoto.layer.cornerRadius = userPhoto.frame.height / 2
        userPhoto.clipsToBounds = true
        
    }


}

