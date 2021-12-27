//
//  ViewController.swift
//  queue
//
//  Created by GUDIPATI ASHOK REDDY on 12/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        internum()
        cll { String in
        print("\(String)")
        }
    }
    func cll(closer:(() -> ())? = nil , completion:@escaping(String) -> ()) {
        completion("ggg")
    }
    
    func internum() {
     
        
        let arrray1 = [1,2,3,nil]
        let arrray2 = [1,nil,2,3]
        
        let finalarray = [arrray1.compactMap({$0}),arrray2.compactMap({$0})].flatMap({$0}).reduce(1,*)
        
      //  let total = arrray.reduce(1, {$0 * $1})
        print(finalarray)
        }
        
        
        

    
}
