//
//  ViewController.swift
//  Lab3 // Navigation1to1
//
//  Created by SWUCOMPUTER on 25/03/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pizzaChicken: UISegmentedControl!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toOrderView" {//toOrderView와 같으면
            let destVC = segue.destination as! OrderViewController
            let ordered: String! = pizzaChicken.titleForSegment(at: pizzaChicken.selectedSegmentIndex)//title이 선택한 세그먼트의 인덱스로 변함
            destVC.title = ordered
            var outString: String = "감사합니다!!\n 주문내역: <";
            outString += ordered
            outString += ">, 맞나요?"
            destVC.info = outString // 우리가 쓸 내용을 미리 info라는 변수에 저장
        } }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

