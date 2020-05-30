//
//  FinishViewController.swift
//  PersonalStartInfoApp
//
//  Created by Ирина Кузнецова on 31.05.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import UIKit

class FinishViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.frame.size.height = imageView.frame.width
    }
}
