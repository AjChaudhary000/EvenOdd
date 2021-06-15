//
//  ViewController.swift
//  OddEven
//
//  Created by DCS on 12/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let mylabel : UILabel = {
        let label = UILabel()
        label.text = "CHECK A VALUE IS ODD AND EVAN "
        
        label.textColor = .white
        label.font = label.font.withSize(30)
        label.font = UIFont(name:"LastResort", size: 20.0)
        label.font = UIFont.italicSystemFont(ofSize: 20.0)
        label.shadowColor = .gray
        label.shadowOffset = CGSize(width: 3, height: 4)
        label.layer.shadowOpacity = 0.8
        label.textAlignment = .center
        return label
    }()
    private let mytxtbox:UITextField = {
        let txtfield = UITextField()
        txtfield.layer.cornerRadius = 10
        txtfield.placeholder = "Enter The number value "
        txtfield.backgroundColor = UIColor.lightGray
        txtfield.textColor = .white
        //txtfield.layer.opacity = 0.2
        
        
        txtfield.textAlignment = .center
        return txtfield
    }()
    private let btncheck : UIButton = {
        let btn = UIButton()
        btn.setTitle("Check a data ", for: .normal)
        btn.backgroundColor = .black
        btn.layer.borderWidth = 3
        btn.layer.borderColor = UIColor.white.cgColor
        btn.layer.cornerRadius = 30
        btn.addTarget(self, action: #selector(checkvalue), for: .touchUpInside)
        return btn
    }()
    private let image:UIImageView = {
        let img = UIImageView(image:UIImage(named: "car"))
        
        return img
    }()

    
    private let myview:UIView = {
        let  vw = UIView()
        vw.backgroundColor = .white
        return vw
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(image)
        view.addSubview(mylabel)
        view.addSubview(myview)
        view.addSubview(mytxtbox)
        view.addSubview(btncheck)
        
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        mylabel.frame = CGRect(x: 20, y: 70, width: view.frame.size.width - 40, height: 50)
        mytxtbox.frame = CGRect(x: 70, y: (view.frame.size.height / 2 ) + 30, width: 200, height: 50)
        btncheck.frame = CGRect(x: 100, y: (view.frame.size.height / 2 ) - 60, width: view.frame.size.width - 180, height: 50)
        image.frame =  CGRect(x:0, y:0, width: 375, height: 675)
        myview.frame = CGRect(x:40, y: (view.frame.size.height / 2 ) - 30, width: 290, height: 250)
    }
    @objc func checkvalue(){
        let cn = checknum()
        guard let txtnumber = Int(mytxtbox.text!) else {
            print("Wrong input....")
            return
        }
        if txtnumber % 2 == 0 {
            cn.checkData   = "Even "
        }else{
            cn.checkData   = "Odd"
        }
        
            cn.number = String(txtnumber)
        navigationController?.pushViewController(cn, animated: true)
    }
}

