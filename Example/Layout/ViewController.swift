//
//  ViewController.swift
//  Layout
//
//  Created by wuzhenli on 04/01/2019.
//  Copyright (c) 2019 wuzhenli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblGray: UILabel!
    
    @IBOutlet weak var lblRed: UILabel!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var yellowView: UIView!
    
    
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

