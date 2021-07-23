//
//  ViewController.swift
//  workfi
//
//  Created by Sara Anwar on 8/28/19.
//  Copyright © 2019 Sara Anwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var forgot: UIButton!
    
    
    @IBOutlet weak var pagecontrol: UIPageControl!
    @IBOutlet weak var scrollview: UIScrollView!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    let imagesArray = ["0","1","2","3"]
    
      var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pagecontrol.numberOfPages = imagesArray.count
        for i in 0..<imagesArray.count{
            let imageView = UIImageView()
            imageView.contentMode = .scaleToFill
            imageView.image = UIImage(named: imagesArray[i])
            let xPos = CGFloat(i)*self.view.bounds.size.width
            imageView.frame = CGRect(x: xPos, y: 0, width: view.frame.size.width, height: scrollview.frame.size.height)
            scrollview.contentSize.width = view.frame.size.width*CGFloat(i+1)
            scrollview.addSubview(imageView)
            
            button2.layer.borderWidth = 5.0
            button2.layer.cornerRadius = 8
            button2.layer.masksToBounds = true
            button2.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
            
            button1.layer.borderWidth = 5.0
            button1.layer.cornerRadius = 8
            button1.layer.masksToBounds = true
            button1.layer.borderColor = UIColor.init(red: 26.0/255.0, green: 174.0/255.0, blue: 164.0/255.0, alpha: 1.0).cgColor
        }}
override func viewDidAppear(_ animated: Bool) {
        timer.invalidate()
        //timer = nil
        timer = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(timerFired), userInfo: nil, repeats: true)}
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page = scrollview.contentOffset.x/scrollview.frame.width
        pagecontrol.currentPage = Int(page)
    }
    
   @objc func timerFired(){
    do {
    let lastPage = imagesArray.count - 1
    if imagesArray.count > 1 {
    let page = pagecontrol.currentPage
    if page == lastPage {
    scrollview.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    pagecontrol.currentPage = 0
    } else {
        scrollview.setContentOffset(CGPoint(x: scrollview.frame.size.width*CGFloat(page + 1), y: 0), animated: true)
        pagecontrol.currentPage = page + 1 }}}}
    
    
}


