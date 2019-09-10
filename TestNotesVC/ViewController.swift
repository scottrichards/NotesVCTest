//
//  ViewController.swift
//  TestNotesVC
//
//  Created by Scott Richards on 9/10/19.
//  Copyright © 2019 Glassdoor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onOpenNotes(_ sender: Any) {
        let collectionsNoteVC = CollectionNotesViewController(nibName: String(describing: CollectionNotesViewController.self), bundle: nil)
        self.navigationController?.pushViewController(collectionsNoteVC, animated: true)
        collectionsNoteVC.notes = "Reddit to hire 26 marketing roles this year\rUpdate resume with marketing experience\r\r\nSee if John still works here.\r\rReach out to recruiter."
        collectionsNoteVC.collectionTitle = "Web Development Back and Front End Enginering positions"
    }
    
}

