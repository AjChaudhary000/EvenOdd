//
//  checknum.swift
//  OddEven
//
//  Created by DCS on 12/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//
import UIKit

class checknum: UIViewController
{
     var number  = ""
    var  checkData = ""
    private let mylabel : UILabel = {
        let label = UILabel()
        label.text = ""
        
        label.textColor = .black
        
        label.textAlignment = .center
        return label
    }()
    private let image:UIImageView = {
        let img = UIImageView(image:UIImage(named: "BGBG@"))
        
        return img
    }()
    
    
    private let myview:UIView = {
        let  vw = UIView()
        vw.backgroundColor = .white
        vw.layer.cornerRadius = 12
        vw.layer.opacity = 0.2
        return vw
    }()
    private let myview1:UIView = {
        let  vw1 = UIView()
        vw1.backgroundColor = .white
        vw1.layer.cornerRadius = 12
        vw1.layer.opacity = 1
        return vw1
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(image)
        view.addSubview(myview)
        view.addSubview(myview1)
    view.addSubview(mylabel)
        
     mylabel.text = number + " Is " + checkData + " Data "
        
    }
    override func viewDidLayoutSubviews() {
        mylabel.frame = CGRect(x: 79, y: 442, width: 214, height: 40)
        image.frame =  CGRect(x:0, y:0, width: 375, height: 675)
        myview.frame = CGRect(x:8, y: 334, width: 357, height: 340)
        myview1.frame = CGRect(x:54, y: 409, width: 267, height: 171)
    }
}

