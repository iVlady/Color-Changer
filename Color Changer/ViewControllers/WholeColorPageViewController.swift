//
//  WholeColorPageViewController.swift
//  Color Changer
//
//  Created by Vlad Vinogrotskiy on 06.06.2021.
//

import UIKit

class WholeColorPageViewController: UIViewController, ColorChangable {
    func update(color: UIColor) {
    }

    private let segueId = "toChanger"
    @IBOutlet weak var wholeBackground: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func barButton(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: segueId, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case segueId:
            guard let vc = segue.destination as? ViewController
            else { return }
            vc.delegate = self
            
        default: break
        }
    }
    
}
