//
//  ViewController.swift
//  Protocol+Triadeable
//
//  Created by nuribommac on 2021/03/03.
//

import UIKit

struct StrideFriend: Strideable {
    
    func advanced(by n: Int) -> StrideFriend {
        var result = self
        result.value = result.value + n
        return result
    }
    
    func distance(to other: StrideFriend) -> Int {
        return other.value - value
    }
    
    var value:Int
    
    init(_ value:Int) {
        self.value = value
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sf1 = StrideFriend(1)
        let sf2 = StrideFriend(10)

        for sf in stride(from: sf1, to: sf2, by: 1) {
            print(sf.value)
        }

        for sf in stride(from: sf1, through: sf2, by: 1) {
            print(sf.value)
        }
    }
}

