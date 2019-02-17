//
//  ViewController.swift
//  ViewModel binding
//
//  Created by Stanly Shiyanovskiy on 2/17/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

import UIKit

public class ViewController: UIViewController {
    
    private var viewModel = ViewModel()

    public override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.color.bind(listener: { (color) in
            self.view.backgroundColor = color
        })
    }
}

