//
//  StackItem.swift
//  InfiniteNavigationController
//
//  Created by Allan Melo on 17/05/18.
//  Copyright © 2018 Allan Melo. All rights reserved.
//

public struct StackItem {
	public init(viewController: @escaping () -> (UIViewController), stateModel: Any? = nil) {
		self.viewController = viewController
		self.stateModel = stateModel
	}
	
	public let viewController: () -> (UIViewController)
	public let stateModel: Any?
}
