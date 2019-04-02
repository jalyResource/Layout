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
    
    var testView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lblGray.layer.borderColor = UIColor.black.cgColor
        lblGray.layer.borderWidth = 1
        
        lblRed.layer.borderColor = UIColor.black.cgColor
        lblRed.layer.borderWidth = 1
//        NSLayoutConstraint(item: view, attribute: .top, relatedBy: <#T##NSLayoutRelation#>, toItem: <#T##Any?#>, attribute: <#T##NSLayoutAttribute#>, multiplier: <#T##CGFloat#>, constant: <#T##CGFloat#>)
        
        lblGray.jl.makeConstraints { (make) in
            make.top.equalTo(100)
            make.left.equalToSuperview().offset(10)
        }
        
        view.bringSubview(toFront: lblRed)
        
        lblRed.jl.makeConstraints { (make) in
            make.top.equalTo(lblGray)
            make.left.equalTo(lblGray.jl.right).offset(1)
//            make.width.equalTo(200)
            make.width.equalTo(lblGray).offset(100)
            make.height.equalTo(lblGray).offset(2)
//            make.wid
        }
        
        /*
         tableView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(kTopSafeArea)
            make.left.right.bottom.equalTo(view).offset(0)
         }*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

