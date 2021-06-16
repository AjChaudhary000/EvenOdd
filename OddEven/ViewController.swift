//
//  ViewController.swift
//  OddEven
//
//  Created by DCS on 12/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
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
        btn.layer.cornerRadius = 10
        btn.addTarget(self, action: #selector(checkvalue), for: .touchUpInside)
        return btn
    }()
    private let image:UIImageView = {
        let img = UIImageView(image:UIImage(named: "BGBG@"))
        
        return img
    }()

    
    private let myview:UIView = {
        let  vw = UIView()
        vw.backgroundColor = .blue
        vw.layer.cornerRadius = 12
        vw.layer.opacity = 0.22
        return vw
    }()
    private let myview1:UIView = {
        let  vw1 = UIView()
        vw1.backgroundColor = .white
        vw1.layer.cornerRadius = 12
        vw1.layer.opacity = 1
        return vw1
    }()
    private let myview2:UIView = {
        let  vw3 = UIView()
        vw3.backgroundColor = .white
        vw3.layer.cornerRadius = 15
        vw3.layer.opacity = 0.90
        return vw3
    }()
    private let mylable1:UILabel = {
        let  vw2 = UILabel()
        
        vw2.text = "Odd Even Checked"
        vw2.textAlignment = .center
        
        return vw2
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(image)
        
        view.addSubview(myview)
        view.addSubview(myview2)
        view.addSubview(mylable1)
        
        view.addSubview(myview1)
        
        view.addSubview(mytxtbox)
        view.addSubview(btncheck)
        
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        
        mytxtbox.frame = CGRect(x: 79, y: 442, width: 214, height: 35)
        btncheck.frame = CGRect(x: 115, y:504,width: 150, height: 40)
        image.frame =  CGRect(x:0, y:0, width: 375, height: 675)
        myview.frame = CGRect(x:8, y: 334, width: 357, height: 340)
        myview1.frame = CGRect(x:54, y: 409, width: 267, height: 171)
        mylable1.frame = CGRect(x:97, y: 317, width: 181, height: 33)
        myview2.frame = CGRect(x:97, y: 317, width: 181, height: 33)
        
    }
    @objc func checkvalue(){
        let cn = checknum()
        guard let txtnumber = Int(mytxtbox.text!) else {
            print("Wrong input....")
            let alert = UIAlertController(title: "Opps", message: "Please Enter proper Value.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
            DispatchQueue.main.async  {
                self.present(alert, animated: true)
            }
            
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

