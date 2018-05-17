//
//  StackProtocol.swift
//  InfiniteNavigationController
//
//  Created by Allan Melo on 17/05/18.
//  Copyright © 2018 Allan Melo. All rights reserved.
//

public protocol StackProtocol {
	func getStateModel() -> StackItem
	func setState(model: StackItem)
}
