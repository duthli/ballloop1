//
//  ViewController.swift
//  ball
//
//  Created by do duy hung on 16/08/2016.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Text: UITextField!
    

    var n : Int = 5;
    let margin_ : CGFloat = 60;
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func Draw(sender: UIButton) {
        clean()
        n = Int(Text.text!)!
        DrawRow()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func DrawRow(){
        for idx in 0..<n{
            for j in 0..<n{
                let image = UIImage(named: "ball")
                let ball = UIImageView(image: image)
                ball.center = CGPointMake(margin_ + CGFloat(idx+1) * spaceperrow(), CGFloat(j+1) * spaceCol())
                self.view.addSubview(ball)
            }
        }
    }
    func spaceperrow()->CGFloat{
    let space = (self.view.bounds.size.width - 2 * margin_) / CGFloat(n-1)
        return space
    }
    func spaceCol()->CGFloat{
    let spacey = (self.view.bounds.size.height - 2 * margin_) / CGFloat(n-1)
        return spacey
    }
    func clean(){
        for v in view.subviews{
            if v is UIImageView{
                v.removeFromSuperview()
            }
        }
    }
}

