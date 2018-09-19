//
//  ViewController.swift
//  UISlider
//
//  Created by 李维强 on 2018/9/16.
//  Copyright © 2018 李维强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let slider = UISlider(frame: CGRect(x: 20, y: 100, width: 400, height: 30))
        
        self.view.addSubview(slider)
        
        //滑块颜色
        slider.thumbTintColor = UIColor.red
        //滑块左边
        slider.minimumTrackTintColor = UIColor.green
        //滑块蓝色
        slider.maximumTrackTintColor = UIColor.blue
        
        //设置滑块值大小
        slider.minimumValue =  0
        slider.maximumValue = 10
        slider.value = 5
        
        //监听
        slider.addTarget(self, action: #selector(change), for: UIControl.Event.valueChanged)
        
        slider.setThumbImage(UIImage(named: "image"), for: UIControl.State())
        slider.setThumbImage(UIImage(named: "image"), for: UIControl.State.highlighted)
        
        slider.setMinimumTrackImage(UIImage(named: "image"), for: UIControl.State())
        slider.setMaximumTrackImage(UIImage(named: "image"), for: UIControl.State())
        
        //是否连续触发
        slider.isContinuous = false
    }


    @objc func change(slider:UISlider) {
        print("\(slider.value)")
    }
    
}

