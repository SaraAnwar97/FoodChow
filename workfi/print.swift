//
//  print.swift
//  workfi
//
//  Created by Sara Anwar on 9/23/19.
//  Copyright © 2019 Sara Anwar. All rights reserved.
//

import UIKit

class print: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
        func removeAnimate()
        {
            UIView.animate(withDuration: 0.25, animations: {
                self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
                self.view.alpha = 0.0;
            }, completion:{(finished : Bool)  in
                if (finished)
                {
                    self.view.removeFromSuperview()
                }
            });
            
        }
        

}
}
