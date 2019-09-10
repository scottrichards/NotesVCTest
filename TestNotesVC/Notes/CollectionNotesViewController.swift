//Copyright © 2019 Glassdoor Inc. All rights reserved.

import UIKit

class CollectionNotesViewController: UIViewController, UITextViewDelegate {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var notesTextView: UITextView!
    @IBOutlet weak var textViewHeightConstraint: NSLayoutConstraint!
    
    var collectionTitle: String = "" {
        didSet {
            if (titleLabel != nil) {
                titleLabel.text = collectionTitle
            }
        }
    }
    
    var notes: String = "" {
        didSet {
            if (notesTextView != nil ) {
                notesTextView.text = notes
                notesTextView.sizeToFit()
                textViewHeightConstraint.constant = notesTextView.frame.height
    //            notesTextView.setNeedsLayout()
                print("notes height: \(notesTextView.frame.height)")
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        notesTextView.delegate = self
        updateUI()
    }
    
    func updateUI() {
        let titleText = collectionTitle
        collectionTitle = titleText
        let noteText = notes
        notes = noteText
        print("title height: \(titleLabel.frame.height)")
        print("notes height: \(notesTextView.frame.height)")
        notesTextView.setNeedsLayout()
    }
    
    func textViewDidChange(_ textView: UITextView) { //Handle the text changes here
        notesTextView.sizeToFit()
        textViewHeightConstraint.constant = notesTextView.frame.height
//        notesTextView.setNeedsLayout()
//        self.view.setNeedsLayout()
        print("Text View did change - notes height: \(notesTextView.frame.height)")
    }
}
