//
//  CustomNavController.swift
//  FitBag
//
//  Created by Bianca Campos on 2018-11-22.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

import UIKit

class CustomNavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage = UIImage()
    }
    


}
