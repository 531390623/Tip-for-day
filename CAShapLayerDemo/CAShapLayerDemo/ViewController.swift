//
//  ViewController.swift
//  CAShapLayerDemo
//
//  Created by alexiuce  on 2017/7/24.
//  Copyright © 2017年 alexiuce . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: CustomImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redView = UIView(frame: CGRect(x: 70, y: 80, width: 110, height: 110))
        redView.backgroundColor = .red
        redView.layer.cornerRadius = 20
        if #available(iOS 11.0, *) {
            redView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMaxYCorner]
        } else {
            // Fallback on earlier versions
        }
        view.addSubview(redView)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if imgView.loadingView.progress > 1 {return}
        imgView.loadingView.progress += 0.1
        if imgView.loadingView.progress == 1.0 {
            imgView.loadingView.reavl()
        }
    }


}


