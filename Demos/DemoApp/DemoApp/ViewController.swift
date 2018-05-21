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
	@IBOutlet weak var slider: UISlider!
	var sliderValue: Float = 0.5
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		slider.value = sliderValue
		slideAction(slider)
	}
	
	
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
			let viewController = navigationController.storyboard?.instantiateViewController(withIdentifier: "defaultViewController") else {
				return
		}
		
		navigationController.pushViewController(viewController, animated: true)
		viewController.title = text
		
		print("Number of viewControllers in memory \(navigationController.viewControllers.count)")
	}
	
}

extension ViewController: StackProtocol {
	func getStateModel() -> StackItem {
		return StackItem(viewController: {
			let storyboard = UIStoryboard(name: "Main", bundle: nil)
		
			return storyboard.instantiateViewController(withIdentifier: "defaultViewController")
		}, stateModel: (title, slider.value))
	}
	
	func setState(model: StackItem) {
		if let (text, value) = model.stateModel as? (String, Float) {
			title = text
			sliderValue = value
		}
	}
}
