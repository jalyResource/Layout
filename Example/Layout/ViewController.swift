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
        
//        NSLayoutConstraint(item: view, attribute: .top, relatedBy: <#T##NSLayoutRelation#>, toItem: <#T##Any?#>, attribute: <#T##NSLayoutAttribute#>, multiplier: <#T##CGFloat#>, constant: <#T##CGFloat#>)
        
        lblGray.jl.makeConstraints { (make) in
            make.top.equalTo(100)
            make.left.equalTo(100)
            // make.left.equalToSuperview().offset(12)
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

