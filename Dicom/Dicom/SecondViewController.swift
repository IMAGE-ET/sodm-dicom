//
//  SecondViewController.swift
//  Dicom
//
//  Created by Anna Potempa on 04.01.2017.
//  Copyright © 2017 Anna Potempa. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageScroll: ImageScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageScroll.display(image: UIImage(named: "head")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

