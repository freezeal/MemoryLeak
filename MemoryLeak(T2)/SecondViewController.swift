//
//  SecondViewController.swift
//  MemoryLeak(T2)
//
//  Created by KAKAO on 4/18/24.
//

import UIKit

class SampleA {
    var target: SampleB?
}

class SampleB {
    var target: SampleA?
}

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red

        let sampleA = SampleA()
        let sampleB = SampleB()
        
        sampleA.target = sampleB
        sampleB.target = sampleA
    }
}
