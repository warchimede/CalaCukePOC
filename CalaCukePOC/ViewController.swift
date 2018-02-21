//
//  ViewController.swift
//  CalaCukePOC
//
//  Created by William Archimède on 20/02/2018.
//  Copyright © 2018 France Televisions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTap(_ sender: Any) {
        let alert = UIAlertController(
            title: "Calabash Success !",
            message: "",
            preferredStyle: .alert
        )

        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))

        present(alert, animated: true, completion: nil)
    }
}

