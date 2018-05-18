//
//  ViewController.swift
//  DemoApp
//
//  Created by Allan Melo on 17/05/18.
//  Copyright © 2018 Allan Melo. All rights reserved.
//

import UIKit
import InfiniteNavigationController_iOS

class ViewController: UIViewController {

	@IBAction func slideAction(_ sender: Any) {
		guard let slider = sender as? UISlider else {
			return
		}
		
		view.backgroundColor = UIColor(hue: CGFloat(slider.value), saturation: 1, brightness: 1, alpha: 1)
	}
	
	@IBAction func open(_ sender: Any) {
		guard let button  = sender as? UIButton,
			let text = button.currentTitle,
			let navigationController = navigationController,
			let viewController = navigationController.storyboard?.instantiateViewController(withIdentifier: VIEWCONTROLLER_IDENTIFIER) else {
				return
		}
		
		navigationController.pushViewController(viewController, animated: false)
		viewController.title = text
		
		print("Number of viewControllers on stack \(navigationController.viewControllers.count)")
	}
	
	let VIEWCONTROLLER_IDENTIFIER = "defaultViewController"
}

extension ViewController: StackProtocol {
	func getStateModel() -> StackItem {
		return StackItem(viewControllerIdentifier: VIEWCONTROLLER_IDENTIFIER, stateModel: (title, view.backgroundColor))
	}
	
	func setState(model: StackItem) {
		if let (text, color) = model.stateModel as? (String, UIColor) {
			title = text
			view.backgroundColor = color
		}
	}
}
