//
//  ViewController.swift
//  Protocol+Equatable
//
//  Created by 성준 on 2020/11/25.
//

import UIKit

class Product: Equatable {
    
    var productCode:Int
    
    init(_ code:Int) {
        self.productCode = code
    }
    
    static func == (lhs: Product, rhs: Product) -> Bool {
        return lhs.productCode == rhs.productCode
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product1:Product = Product(1)
        let product2:Product = Product(1) //1이 아닌 다른값을 넣어 비교도 해보자.
        
        if product1 == product2 {
            print("값이 같다.")
        } else { //number1 != number2
            print("값이 같지않다.")
        }
        
    }


}

