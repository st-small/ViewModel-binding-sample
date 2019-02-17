//
//  ViewModel.swift
//  ViewModel binding
//
//  Created by Stanly Shiyanovskiy on 2/17/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

import UIKit

public class ViewModel {
    
    public var color: Box<UIColor?> = Box(nil)
    private var timer: Timer!
    
    public init() {
        
        update()
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(update), userInfo: nil, repeats: true)
    }
    
    private let backgroundColors: [UIColor] = [.red, .blue, .green, .black, .white, .cyan, .lightGray]
    
    @objc public func update() {
        color.value = backgroundColors.randomElement()
    }
}
