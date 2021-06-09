//
//  WholeColorPageViewController.swift
//  Color Changer
//
//  Created by Vlad Vinogrotskiy on 06.06.2021.
//

import UIKit

protocol ColorChangable: AnyObject {
    func update (_ color: UIColor)
}

class MainViewController: UIViewController {

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let colorVC = segue.destination as? ColorViewController else { return }
        colorVC.delegate = self
        colorVC.viewColor = view.backgroundColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    
}

extension MainViewController: ColorChangable {
    func update(_ color: UIColor) {
        view.backgroundColor = color
    }
}
