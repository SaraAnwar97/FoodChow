//
//  forgotpassword.swift
//  workfi
//
//  Created by Sara Anwar on 8/30/19.
//  Copyright © 2019 Sara Anwar. All rights reserved.
//

import UIKit

class forgotpassword: UIViewController {
    @IBOutlet weak var reset: UIButton!
    
    @IBOutlet weak var email: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        reset.layer.borderWidth = 5.0
        reset.layer.cornerRadius = 8
        reset.layer.masksToBounds = true
        reset.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        
        email.layer.borderWidth = 2.0
        email.layer.cornerRadius = 8
        email.layer.masksToBounds = true
        email.layer.borderColor = UIColor.lightGray.cgColor

    }
    

    

}
