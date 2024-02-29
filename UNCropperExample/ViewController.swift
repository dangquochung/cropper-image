//
//  ViewController.swift
//  UNCropperExample
//
//  Created by Mạnh Lương on 08/02/2023.
//

import UIKit
import UNCopperImage

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.pushViewController(setupCropImageView(), animated: true)
    }
    
    func setupCropImageView() -> UNCropperViewController {
        let cropView = UNCropperViewController(originalImage: UIImage(named: "test")!)
        return cropView
    }
}

