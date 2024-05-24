//
//  ViewController.swift
//  MemoryLeak(T2)
//
//  Created by KAKAO on 4/18/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let second = self.navigationController?.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {
            return
        }
        
        self.navigationController?.pushViewController(second, animated: true)
    }

}
