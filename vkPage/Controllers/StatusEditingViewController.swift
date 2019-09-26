import UIKit

class StatusEditingViewController: UIViewController {
    
    var statusDelegate: statusPassingDelegate!
    var previousText: String!

    @IBOutlet weak var textView: UITextView!
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        statusDelegate.changeStatusLabel(for: textView.text)
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = previousText
    }
}

protocol statusPassingDelegate {
    func changeStatusLabel(for text: String)
}
