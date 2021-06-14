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
        
        label.textColor = .black
     
        label.textAlignment = .center
        return label
    }()
    private let mytxtbox:UITextField = {
        let txtfield = UITextField()
        txtfield.layer.cornerRadius = 10
        txtfield.placeholder = "Enter The number value "
        txtfield.backgroundColor = .white
        txtfield.textColor = .black
        txtfield.layer.borderColor = UIColor.black.cgColor
        txtfield.layer.borderWidth = 1
        
        txtfield.textAlignment = .center
        return txtfield
    }()
    private let btncheck : UIButton = {
        let btn = UIButton()
        btn.setTitle("Check a data ", for: .normal)
        btn.backgroundColor = .black
        btn.layer.borderWidth = 3
        btn.layer.borderColor = UIColor.green.cgColor
        btn.layer.cornerRadius = 20
        btn.addTarget(self, action: #selector(checkvalue), for: .touchUpInside)
        return btn
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(mylabel)
        view.addSubview(mytxtbox)
        view.addSubview(btncheck)
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        mylabel.frame = CGRect(x: 20, y: 80, width: view.frame.size.width - 40, height: 40)
        mytxtbox.frame = CGRect(x: 20, y: mylabel.frame.origin.y + mylabel.frame.size.height + 20, width: view.frame.size.width - 40, height: 40)
        btncheck.frame = CGRect(x: 50, y: mytxtbox.frame.origin.y + mytxtbox.frame.size.height + 20, width: view.frame.size.width - 100, height: 40)
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

