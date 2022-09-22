//
//  ViewController.swift
//  HW6
//
//  Created by oleg krazhau on 14.09.2022.
//

import UIKit

class ViewController: UIViewController {

    let myCircle = UIView ()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        myCircle.frame = CGRect(
            x: 100,
            y: 250,
            width: 50,
            height: 50
        )
        myCircle.backgroundColor = .white
        myCircle.layer.cornerRadius = 25
        view.addSubview(myCircle)

        let gesture = UITapGestureRecognizer(target: self, action: #selector(gestureFunc))
        myCircle.addGestureRecognizer(gesture)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @objc func gestureFunc() {
        let height = view.frame.size.height
        let width  =  view.frame.size.width
        
        let randomRed   = Double.random(in: 0.0...1.0)
        let randomGreen = Double.random(in: 0.0...1.0)
        let randomBlue  = Double.random(in: 0.0...1.0)
        
        let y  = Double.random(in: 0...height - 50)
        let x  = Double.random(in: 0...width  - 50)

        myCircle.backgroundColor = UIColor(
            red:   randomRed,
            green: randomGreen,
            blue:  randomBlue,
            alpha: 1)
        myCircle.frame = CGRect(
            x: x,
            y: y,
            width: 50,
            height: 50
        )
    }
}

