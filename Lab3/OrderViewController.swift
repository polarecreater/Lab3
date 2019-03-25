//
//  OrderViewController.swift
//  Lab3
//
//  Created by SWUCOMPUTER on 25/03/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    //전체에서 마지막으로 하는 단계
    var info: String?//!도 괜찮음 //info변수 선언 -> viewcontroller에서 사용가능
    //오버라이드 중요
    override func viewDidLoad() {//나타났다 사라지는 한번만 <-> ~appear함수는 반복해서 사용 가능
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //가장 중요
        if let contentString = info{//선언된 것. 넘어오기 전에 viewcontroller destVC.info = outstring에서 선언됨 //info가 값이 있으면 실행됨 else는 없음
            infoLabel.text = contentString //레이블에 값이 저장됨
        }
    }
    
   
  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}


