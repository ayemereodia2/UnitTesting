//
//  ViewController.swift
//  UnitTesting
//
//  Created by Ayemere  Odia  on 17/12/2019.
//  Copyright © 2019 Ayemere  Odia . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(2.square())
    }


}

extension Int{
    
    func square()->Int{
        return self * self
    }
}

