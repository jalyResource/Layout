//
//  ViewController.swift
//  Layout
//
//  Created by wuzhenli on 04/01/2019.
//  Copyright (c) 2019 wuzhenli. All rights reserved.
//

import UIKit
import Layout

class ViewController: UIViewController {

    @IBOutlet weak var lblGray: UILabel!
    
    @IBOutlet weak var lblRed: UILabel!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var yellowView: UIView!
    
    @IBOutlet weak var lblCenterXY: UILabel!
    @IBOutlet weak var lblCenter: UILabel!
    @IBOutlet weak var lblCenterY: UILabel!
    
    @IBOutlet weak var lblRemake: UILabel!
    
    @IBOutlet weak var lblRemake2: UILabel!
    
    @IBOutlet weak var lblChainSyntex: UILabel!
    
    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var lblCenterXCenterY: UILabel!
    
    
    var testView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lblGray.layer.borderColor = UIColor.black.cgColor
        lblGray.layer.borderWidth = 1
        
        lblRed.layer.borderColor = UIColor.black.cgColor
        lblRed.layer.borderWidth = 1
        
        lblGray.jl.makeConstraints { (make) in
            make.top.equalTo(100)
            make.left.equalToSuperview().offset(10)
            make.size.equalTo(CGSize(width: 120, height: 30))
        }
            
        view.bringSubview(toFront: lblRed)
        
        lblRed.jl.makeConstraints { (make) in
            make.top.equalTo(lblGray)
            make.left.equalTo(lblGray.jl.right).offset(1)
            make.size.equalTo(lblGray)
        }
        
        greenView.jl.makeConstraints { (make) in
            make.left.equalTo(lblGray)
            make.top.equalTo(lblGray.jl.bottom).offset(10)
            make.size.equalTo(CGSize(width: 90, height: 60))
        }
        
        yellowView.jl.makeConstraints { (make) in
            make.left.equalTo(greenView.jl.right)
            make.centerY.equalTo(greenView)
            make.size.equalTo(greenView)
        }
        
        view.bringSubview(toFront: lblCenterXY)
        lblCenterXY.jl.makeConstraints { (make) in
            make.centerX.equalTo(yellowView)
            make.centerY.equalTo(yellowView)
        }
        
        view.bringSubview(toFront: lblCenterY)
        lblCenterY.jl.makeConstraints { (make) in
            make.centerY.equalTo(lblCenterXY.jl.bottom).offset(2)
            make.centerX.equalTo(lblCenterXY)
        }

        lblCenterY.jl.updateConstraints { (make) in
            make.centerY.equalTo(lblCenterXY.jl.bottom).offset(30)
        }
        
        
        
        lblCenter.jl.makeConstraints { (make) in
            make.center.equalTo(greenView.jl.center)
            make.height.equalTo(39)
        }
        lblCenter.jl.updateConstraints { (make) in
            make.height.equalTo(70)
        }
        
        // test remake
        lblRemake.jl.makeConstraints { (make) in
            make.left.equalTo(lblCenter)
            make.top.equalTo(lblCenter).offset(100)
        }
        lblRemake.jl.remakeConstraints { (make) in
            make.left.equalTo(lblCenterY)
            make.top.equalTo(lblCenterY.jl.bottom).offset(10)
        }
        
        lblRemake2.jl.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
        lblRemake2.jl.remakeConstraints { (make) in
            make.centerX.equalTo(lblRemake)
            make.top.equalTo(lblRemake.jl.bottom)
        }
        
        lblChainSyntex.alpha = 0.6
        view.bringSubview(toFront: lblChainSyntex)
        // chain syntex
        lblChainSyntex.jl.makeConstraints { (make) in
            make.left.top.equalTo(lblRemake2)// .offset(20)
        }
        
        viewContainer.jl.makeConstraints { (make) in
            make.centerX.centerY.equalToSuperview()
            make.width.height.equalTo(300)
        }
        
        lblCenterXCenterY.backgroundColor = UIColor.cyan
        lblCenterXCenterY.jl.makeConstraints { (make) in
            make.right.bottom.equalToSuperview().offset(-10)
            make.width.equalTo(200)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

