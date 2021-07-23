//
//  signin.swift
//  workfi
//
//  Created by Sara Anwar on 8/29/19.
//  Copyright © 2019 Sara Anwar. All rights reserved.
//

import UIKit

/*struct Country : Decodable {
    let shop_id: String
    let shop_name: String
    let shop_logo: String
    let subdomain: String
    let food_currency_id: String
}*/

/* extension URL {
    public var queryParameters: [String: String]? {
        guard
            let components = URLComponents(url: self, resolvingAgainstBaseURL: true),
            let queryItems = components.queryItems else { return nil }
        return queryItems.reduce(into: [String: String]()) { (result, item) in
            result[item.name] = item.value
        }
    }
    
    let test1 = getQueryStringParameter(url:"http://mysite3994.com?test1=blah&test2=blahblah", param: "test1")
}
*/
class signin: UIViewController {
    
    
    @IBOutlet weak var signin: UIButton!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.bool(forKey: "ISUSERLOGGEDIN") == true {
           let homeVc = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
            self.navigationController?.pushViewController(homeVc, animated: false)
        }
        
        signin.layer.borderWidth = 5.0
        signin.layer.cornerRadius = 8
        signin.layer.masksToBounds = true
        signin.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        
        
        password.layer.borderWidth = 2.0
        password.layer.cornerRadius = 8
        password.layer.masksToBounds = true
        password.layer.borderColor = UIColor.lightGray.cgColor
        
        username.layer.borderWidth = 2.0
        username.layer.cornerRadius = 8
        username.layer.masksToBounds = true
        username.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    @IBAction func authenticate(_ sender: Any) {
        
        if username.text == "testing@tenacioustechies.com" && password.text == "123456"{
            UserDefaults.standard.set(true, forKey: "ISUSERLOGGEDIN")
            let homeVc = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
            self.navigationController?.pushViewController(homeVc, animated: true)
        
        guard let url = URL(string: "https://www.foodchow.com/api/FoodChowRMS/LoginWD?eid=testing@tenacioustechies.com&pwd=123456&device_type=0&device_id=&token=") else {return}
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let dataResponse = data,
                error == nil else {
                    print(error?.localizedDescription ?? "Response Error")
                    return }
            do{
                //here dataResponse received from a network request
                let jsonResponse = try JSONSerialization.jsonObject(with:
                    dataResponse, options: [])
                print(jsonResponse) //Response result
            } catch let parsingError {
                print("Error", parsingError)
            }
            }
        task.resume()
        }
        else {
            let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "signinError") as! popUpViewController
            self.addChild(popOverVC)
            popOverVC.view.frame = self.view.frame
            self.view.addSubview(popOverVC.view)
            popOverVC.didMove(toParent: self)
            
            /* let signinError = self.storyboard?.instantiateViewController(withIdentifier: "signinError") as! popUpViewController
            self.navigationController?.pushViewController(signinError, animated: true)
*/
 }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

