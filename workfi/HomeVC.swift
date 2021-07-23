//
//  HomeVC.swift
//  workfi
//
//  Created by Sara Anwar on 9/16/19.
//  Copyright © 2019 Sara Anwar. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

   
    @IBOutlet weak var view9: UIView!
    @IBOutlet weak var view8: UIView!
    @IBOutlet weak var view7: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view1: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1.layer.borderWidth = 5.0
        view1.layer.cornerRadius = 8
        view1.layer.masksToBounds = true
        view1.layer.borderColor = UIColor.clear.cgColor
        
        view2.layer.borderWidth = 5.0
        view2.layer.cornerRadius = 8
        view2.layer.masksToBounds = true
        view2.layer.borderColor = UIColor.clear.cgColor
        
        view3.layer.borderWidth = 5.0
        view3.layer.cornerRadius = 8
        view3.layer.masksToBounds = true
        view3.layer.borderColor = UIColor.clear.cgColor
        
        view4.layer.borderWidth = 5.0
        view4.layer.cornerRadius = 8
        view4.layer.masksToBounds = true
        view4.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        
        view5.layer.borderWidth = 5.0
        view5.layer.cornerRadius = 8
        view5.layer.masksToBounds = true
        view5.layer.borderColor = UIColor.clear.cgColor
        
        view6.layer.borderWidth = 5.0
        view6.layer.cornerRadius = 8
        view6.layer.masksToBounds = true
        view6.layer.borderColor = UIColor.clear.cgColor
        
        view7.layer.borderWidth = 5.0
        view7.layer.cornerRadius = 8
        view7.layer.masksToBounds = true
        view7.layer.borderColor = UIColor.clear.cgColor
        
        view8.layer.borderWidth = 5.0
        view8.layer.cornerRadius = 8
        view8.layer.masksToBounds = true
        view8.layer.borderColor = UIColor.clear.cgColor
        
        view9.layer.borderWidth = 5.0
        view9.layer.cornerRadius = 8
        view9.layer.masksToBounds = true
        view9.layer.borderColor = UIColor.clear.cgColor
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func logout(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "ISUSERLOGGEDIN")
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
