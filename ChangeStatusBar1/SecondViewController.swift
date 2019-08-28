//
//  SecondViewController.swift
//  ChangeStatusBar1
//
//  Created by Mohamed on 8/28/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var isDark = false {
        
        didSet {
            
            self.setNeedsStatusBarAppearanceUpdate()
        }
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        
        return isDark ? .default : .lightContent
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

    @IBAction func updateStatusBar(_ sender: UIButton) {
        
        isDark.toggle()
        
    }
    
    @IBAction func btn_dismiss(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
}
