//
//  StackItem.swift
//  InfiniteNavigationController
//
//  Created by Allan Melo on 17/05/18.
//  Copyright © 2018 Allan Melo. All rights reserved.
//

struct StackItem {
	init(viewControllerIdentifier: String, stateModel: Any? = nil) {
		self.viewControllerIdentifier = viewControllerIdentifier
		self.stateModel = stateModel
	}
	
	let viewControllerIdentifier: String
	let stateModel: Any?
}
