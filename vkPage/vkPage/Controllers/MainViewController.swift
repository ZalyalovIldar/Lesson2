import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var userPhoto: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var isActiveLabel: UILabel!
    @IBOutlet weak var shortInfo: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var birthDayLabel: UILabel!
    @IBOutlet weak var studiedAtLabel: UILabel!
    @IBOutlet weak var languagesLabel: UILabel!
    @IBOutlet weak var livingCityLabel: UILabel!
    @IBOutlet weak var vkPageLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    @IBOutlet weak var statusView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userPhoto.layer.cornerRadius = userPhoto.frame.height / 2
        userPhoto.clipsToBounds = true
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tapGesture))
        statusView.addGestureRecognizer(tapGesture)
        
    }
    
    @objc func tapGesture() {
        
        let statusEditingVC = storyboard?.instantiateViewController(identifier: "statusEditingVC") as! StatusEditingViewController
        statusEditingVC.statusDelegate = self
        statusEditingVC.previousText = statusLabel.text
        present(statusEditingVC, animated: true, completion: nil)
        
    }
    
}

extension MainViewController: statusPassingDelegate {
    
    func changeStatusLabel(for text: String) {
        self.statusLabel.text = text
    }
    
}
