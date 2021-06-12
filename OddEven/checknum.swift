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
        label.backgroundColor = .black
        label.textColor = .white
        
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
    view.addSubview(mylabel)
        
     mylabel.text = number + " Is " + checkData + " Data "
        
    }
    override func viewDidLayoutSubviews() {
        mylabel.frame = CGRect(x: 20, y: 80, width: view.frame.size.width - 40, height: 40)
        
    }
}

