//
//  ViewController.swift
//  a207HelloFirebase
//
//  Created by 申潤五 on 2020/8/29.
//  Copyright © 2020 申潤五. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Auth.auth().signInAnonymously { (result, error) in
            if error != nil{
                print(error?.localizedDescription)
            }else{
                print(result?.user.debugDescription)
            }
        }
        
        
    }


}

