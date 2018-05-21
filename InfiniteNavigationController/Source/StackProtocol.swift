//
//  StackProtocol.swift
//  InfiniteNavigationController
//
//  Created by Allan Melo on 17/05/18.
//  Copyright © 2018 Allan Melo. All rights reserved.
//

@objc public protocol StackProtocol {
	@objc func getStateModel() -> StackItem
	@objc optional func setState(model: StackItem)
}
