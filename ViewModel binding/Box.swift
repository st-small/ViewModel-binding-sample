//
//  Box.swift
//  ViewModel binding
//
//  Created by Stanly Shiyanovskiy on 2/17/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation

public class Box<T> {
    
    public typealias Listener = (T) -> ()
    
    public var listener: Listener?
    
    public var value: T {
        didSet {
            listener?(value)
        }
    }
    
    public func bind(listener: @escaping Listener) {
        self.listener = listener
        listener(value)
    }
    
    public init(_ value: T) {
        self.value = value
    }
}
