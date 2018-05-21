//
//  StackItem.swift
//  InfiniteNavigationController
//
//  Created by Allan Melo on 17/05/18.
//  Copyright © 2018 Allan Melo. All rights reserved.
//

public class StackItem: NSObject {
	public init(viewController: @escaping (Any?) -> (UIViewController), stateModel: Any? = nil) {
		self.viewController = viewController
		self.stateModel = stateModel
	}
	
	public let viewController: (Any?) -> (UIViewController)
	public let stateModel: Any?
}
