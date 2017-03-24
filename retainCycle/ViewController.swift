//
//  ViewController.swift
//  retainCycle
//
//  Created by Trương Thắng on 3/25/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    var previousVC: BaseViewController?
    weak var nextVC: BaseViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        print("\(type(of: self)) - deinit")
        
    }

    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        nextVC = segue.destination as? BaseViewController
        nextVC?.previousVC = self
    }

}

class VC1 : BaseViewController {
    
}

class VC2 : BaseViewController {
    
}

class VC3 : BaseViewController {
    
}
