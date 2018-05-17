//
//  InfiniteNavigationController.swift
//  InfiniteNavigationController
//
//  Created by Allan Melo on 17/05/18.
//  Copyright © 2018 Allan Melo. All rights reserved.
//

import UIKit

public class InfiniteNavigationController : UINavigationController {
	private let MAX_STACK = 3
	
	private var stackItems = [StackItem]()
	
	override public func popViewController(animated: Bool) -> UIViewController? {
		let viewController = super.popViewController(animated: animated)
		
		if let item = stackItems.popLast(),
			let viewController = storyboard?.instantiateViewController(withIdentifier: item.viewControllerIdentifier)
				as? UIViewController & StackProtocol  {
			
			viewController.setState(model: item)
			viewControllers.insert(viewController, at: 0)
		}
		
		return viewController
	}
	
	override public func pushViewController(_ viewController: UIViewController, animated: Bool) {
		super.pushViewController(viewController, animated: animated)
		
		if (viewControllers.count == MAX_STACK) {
			if let stackItem = viewControllers.removeFirst() as? StackProtocol {
				stackItems.append(stackItem.getStateModel())
			}
		}
	}
}
