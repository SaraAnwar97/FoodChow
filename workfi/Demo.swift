//
//  Demo.swift
//  workfi
//
//  Created by Sara Anwar on 9/18/19.
//  Copyright © 2019 Sara Anwar. All rights reserved.
//

import UIKit

class Demo: UIViewController {
    @IBOutlet weak var pic6: UIImageView!
    @IBOutlet weak var pic5: UIImageView!
    @IBOutlet weak var pic4: UIImageView!
    @IBOutlet weak var pic3: UIImageView!
    @IBOutlet weak var pic2: UIImageView!
    @IBOutlet weak var pic1: UIImageView!
    @IBOutlet weak var imgview9: UIImageView!
    @IBOutlet weak var imgview8: UIImageView!
    @IBOutlet weak var imgview7: UIImageView!
    @IBOutlet weak var imgview6: UIImageView!
    @IBOutlet weak var imgview5: UIImageView!
    @IBOutlet weak var imgview4: UIImageView!
    @IBOutlet weak var imgview3: UIImageView!
    @IBOutlet weak var imgview2: UIImageView!
    @IBOutlet weak var imgview1: UIImageView!
    @IBOutlet weak var breakfast1: UIButton!
    @IBOutlet weak var drinks2: UIButton!
    
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var smallButton1: UIButton!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var CouponCode: UITextField!
    @IBOutlet weak var print: UIButton!
    @IBOutlet weak var settle: UILabel!
  
    @IBOutlet weak var update: UIButton!
    @IBOutlet weak var apply: UILabel!
    @IBOutlet weak var myRoundSearch: UIButton!
    @IBOutlet weak var drinks1: UIButton!
    @IBOutlet weak var dinner2: UIButton!
    @IBOutlet weak var dinner1: UIButton!
    @IBOutlet weak var lunch2: UIButton!
    @IBOutlet weak var lunch1: UIButton!
    @IBOutlet weak var breakfast2: UIButton!
    
    @IBAction func customer(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CustomerPopUp") as! CustomerPopUp
        self.addChild(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParent: self)
        
        
    }
    
    @IBAction func settle(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "settle") as! settle
        self.addChild(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParent: self)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        smallButton1.layer.borderWidth = 2.0
        smallButton1.layer.cornerRadius = 4
        smallButton1.layer.masksToBounds = true
        smallButton1.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        
        button2.layer.borderWidth = 2.0
        button2.layer.cornerRadius = 4
        button2.layer.masksToBounds = true
        button2.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor


        button3.layer.borderWidth = 2.0
        button3.layer.cornerRadius = 4
        button3.layer.masksToBounds = true
        button3.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        
        button4.layer.borderWidth = 2.0
        button4.layer.cornerRadius = 4
        button4.layer.masksToBounds = true
        button4.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        button5.layer.borderWidth = 2.0
        button5.layer.cornerRadius = 4
        button5.layer.masksToBounds = true
        button5.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        
        button6.layer.borderWidth = 2.0
        button6.layer.cornerRadius = 4
        button6.layer.masksToBounds = true
        button6.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        
        
        drinks1.layer.borderWidth = 2.0
        drinks1.layer.cornerRadius = 8
        drinks1.layer.masksToBounds = true
        drinks1.layer.borderColor = UIColor.clear.cgColor;
        
        drinks2.layer.borderWidth = 5.0
        drinks2.layer.cornerRadius = 8
        drinks2.layer.masksToBounds = true
        drinks2.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        
        dinner1.layer.borderWidth = 5.0
        dinner1.layer.cornerRadius = 8
        dinner1.layer.masksToBounds = true
        dinner1.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        dinner2.layer.borderWidth = 5.0
        dinner2.layer.cornerRadius = 8
        dinner2.layer.masksToBounds = true
        dinner2.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        
        lunch1.layer.borderWidth = 5.0
        lunch1.layer.cornerRadius = 8
        lunch1.layer.masksToBounds = true
        lunch1.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        
        lunch2.layer.borderWidth = 5.0
        lunch2.layer.cornerRadius = 8
        lunch2.layer.masksToBounds = true
        lunch2.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        
        breakfast2.layer.borderWidth = 5.0
        breakfast2.layer.cornerRadius = 8
        breakfast2.layer.masksToBounds = true
        breakfast2.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        
        breakfast1.layer.borderWidth = 5.0
        breakfast1.layer.cornerRadius = 8
        breakfast1.layer.masksToBounds = true
        breakfast1.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        myRoundSearch.layer.borderWidth = 2.0
        myRoundSearch.layer.cornerRadius = 8
        myRoundSearch.layer.masksToBounds = true
        myRoundSearch.layer.borderColor = UIColor.clear.cgColor;
        
        pic1.layer.cornerRadius = 10
        pic1.clipsToBounds = true
        pic1.layer.borderWidth = 3
        pic1.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        pic1.contentMode = .scaleAspectFill
        pic1.layer.shadowColor = UIColor.black.cgColor
        pic1.layer.shadowOffset = CGSize(width: -5, height: -5)
        pic1.layer.shadowRadius = 5
        pic1.layer.shadowOpacity = 1.0
        
        pic2.layer.cornerRadius = 10
        pic2.clipsToBounds = true
        pic2.layer.borderWidth = 3
        pic2.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        pic2.contentMode = .scaleAspectFill
        
        pic3.layer.cornerRadius = 10
        pic3.clipsToBounds = true
        pic3.layer.borderWidth = 3
        pic3.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        pic3.contentMode = .scaleAspectFill
        
        pic4.layer.cornerRadius = 10
        pic4.clipsToBounds = true
        pic4.layer.borderWidth = 3
        pic4.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        pic4.contentMode = .scaleAspectFill
        
        pic5.layer.cornerRadius = 10
        pic5.clipsToBounds = true
        pic5.layer.borderWidth = 3
        pic5.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        pic5.contentMode = .scaleAspectFill
        
        
        pic6.layer.cornerRadius = 10
        pic6.clipsToBounds = true
        pic6.layer.borderWidth = 3
        pic6.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        pic6.contentMode = .scaleAspectFill
        
        imgview1.layer.cornerRadius = 10
        imgview1.clipsToBounds = true
        imgview1.layer.borderWidth = 3
        imgview1.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        imgview1.contentMode = .scaleAspectFill
        
        imgview2.layer.cornerRadius = 10
        imgview2.clipsToBounds = true
        imgview2.layer.borderWidth = 3
        imgview2.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        imgview2.contentMode = .scaleAspectFill
        
        imgview3.layer.cornerRadius = 10
        imgview3.clipsToBounds = true
        imgview3.layer.borderWidth = 3
        imgview3.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        imgview3.contentMode = .scaleAspectFill
        
        imgview4.layer.cornerRadius = 10
        imgview4.clipsToBounds = true
        imgview4.layer.borderWidth = 3
        imgview4.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        imgview4.contentMode = .scaleAspectFill
        
        imgview5.layer.cornerRadius = 10
        imgview5.clipsToBounds = true
        imgview5.layer.borderWidth = 3
        imgview5.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        imgview5.contentMode = .scaleAspectFill
        
        imgview6.layer.cornerRadius = 10
        imgview6.clipsToBounds = true
        imgview6.layer.borderWidth = 3
        imgview6.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        imgview6.contentMode = .scaleAspectFill
        
        imgview7.layer.cornerRadius = 10
        imgview7.clipsToBounds = true
        imgview7.layer.borderWidth = 3
        imgview7.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        imgview7.contentMode = .scaleAspectFill
        
        imgview8.layer.cornerRadius = 10
        imgview8.clipsToBounds = true
        imgview8.layer.borderWidth = 3
        imgview8.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        imgview8.contentMode = .scaleAspectFill
        
        imgview9.layer.cornerRadius = 10
        imgview9.clipsToBounds = true
        imgview9.layer.borderWidth = 3
        imgview9.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        imgview9.contentMode = .scaleAspectFill
        
        print.layer.borderWidth = 3.5
        print.layer.cornerRadius = 8
        print.layer.masksToBounds = true
        print.layer.borderColor = UIColor.clear.cgColor;
        
        apply.layer.borderWidth = 3.5
        apply.layer.cornerRadius = 8
        apply.layer.masksToBounds = true
        apply.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        
        settle.layer.borderWidth = 3.5
        settle.layer.cornerRadius = 8
        settle.layer.masksToBounds = true
        settle.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        
        update.layer.borderWidth = 3.5
        update.layer.cornerRadius = 8
        update.layer.masksToBounds = true
        update.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        
        
        view1.layer.borderWidth = 1.0
        view1.layer.cornerRadius = 8
        view1.layer.masksToBounds = true
        view1.layer.borderColor = UIColor.lightGray.cgColor
        
        view2.layer.borderWidth = 1.0
        view2.layer.cornerRadius = 8
        view2.layer.masksToBounds = true
        view2.layer.borderColor = UIColor.lightGray.cgColor
    }
    


}
