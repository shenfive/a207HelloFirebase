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

    @IBOutlet weak var statusLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Auth.auth().addStateDidChangeListener { (auth, user) in
            
            if let currentUser = user{
                self.statusLabel.text = "登入中：\(currentUser.uid)"
            }else{
                self.statusLabel.text = "未登入"
            }
        }
        
        
        
    }
    @IBAction func logout(_ sender: Any) {
        
        do {
            try Auth.auth().signOut()
        } catch  {
            print(error.localizedDescription)
        }
        
        
    }
    
    @IBAction func login(_ sender: Any) {
        Auth.auth().signInAnonymously(completion: nil)
    }
    
}

