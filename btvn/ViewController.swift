//
//  ViewController.swift
//  btvn
//
//  Created by Toan on 3/18/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var  timer : Timer!

    @IBOutlet weak var WelcomeLable: UILabel!
    @IBOutlet weak var AcountButton: UIButton!
    @IBOutlet weak var CircleView2: UIView!
    @IBOutlet weak  var CircleView: UIView!
   
    @IBOutlet weak var LoginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animate(withDuration: 1) {
            self.setup()
            self.animation2()
            self.animation()
        }
     
    }
    
    func setup(){
        CircleView2.backgroundColor = UIColor.clear
        CircleView.backgroundColor = UIColor.clear
        let path : UIBezierPath  = UIBezierPath(ovalIn: CGRect(x:0 , y: 0, width: 300, height: 300))
         let ShapeLayer = CAShapeLayer()
        ShapeLayer.fillColor = #colorLiteral(red: 0.9726985162, green: 0.8943309547, blue: 1, alpha: 1)

        ShapeLayer.path = path.cgPath
        CircleView.layer.addSublayer(ShapeLayer)
    let path2 : UIBezierPath  = UIBezierPath(ovalIn: CGRect(x:0 , y: 80, width:100, height: 100))
            let ShapeLayer2 = CAShapeLayer()
        ShapeLayer2.fillColor = #colorLiteral(red: 1, green: 0.5677005637, blue: 0.8131873259, alpha: 1)
           ShapeLayer2.path = path2.cgPath
       
        CircleView2.layer.addSublayer(ShapeLayer2)
       
       
        //
        LoginButton.layer.cornerRadius = 5
        AcountButton.layer.cornerRadius = 5
        LoginButton.backgroundColor = .white
        AcountButton.backgroundColor = .green
        WelcomeLable.backgroundColor = UIColor.clear
        WelcomeLable.textColor = .white
        view.backgroundColor = #colorLiteral(red: 0.01289685165, green: 0.004139991506, blue: 0.02564362047, alpha: 0.8692506602)
		
        
    }
    func animation(){
        UIView.animate(withDuration: 1,
                       delay: 0,
                       options: [],
                       animations: {
                        self.CircleView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }) { (_) in
            UIView.animate(withDuration: 1,
                           delay: 0,
                           options: [],
                           animations: {
                            self.CircleView.transform = CGAffineTransform(scaleX: 1, y: 1)
            }) { (_) in
                
                
                self.timer = Timer.scheduledTimer(timeInterval:0.5,
                                                                target: self,
                                                                selector: #selector(self.dichuyen),
                                                                userInfo: nil,
                                                                repeats: true)
                
               
                
            }
        }
    }
   
    @objc func dichuyen(){
        let x = Int.random(in: 10...20)
        let y = Int.random(in: 10...20)
        UIView.animate(withDuration: 1) {
            self.CircleView.frame = CGRect(x:CGFloat( 159+x), y:CGFloat( 391+y), width: self.CircleView.frame.width, height: self.CircleView.frame.height)
        }
       
    }
    func animation2(){
        UIView.animate(withDuration: 1,
                       delay: 0,
                       options: [],
                       animations: {
                        self.CircleView2.transform = CGAffineTransform(scaleX: 1.25, y: 1.25)
        }) { (_) in
            UIView.animate(withDuration: 1,
                           delay: 0,
                           options: [],
                           animations: {
                            self.CircleView2.transform = CGAffineTransform(scaleX: 1, y: 1)
            }) { (_) in
                
                
                self.timer = Timer.scheduledTimer(timeInterval:0.5,
                                                                target: self,
                                                                selector: #selector(self.dichuyen2),
                                                                userInfo: nil,
                                                                repeats: true)
                
               
                
            }
        }
    }
    @objc func dichuyen2(){
        let x = Int.random(in: 10...20)
        let y = Int.random(in: 10...20)
        UIView.animate(withDuration: 1) {
            self.CircleView2.frame = CGRect(x:CGFloat( 90+x), y:CGFloat( 437+y), width: self.CircleView2.frame.width, height: self.CircleView2.frame.height)
        }
       
    }
}

