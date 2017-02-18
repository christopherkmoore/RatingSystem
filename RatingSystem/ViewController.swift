//
//  ViewController.swift
//  RatingSystem
//
//  Created by Christopher Moore on 2/16/17.
//  Copyright © 2017 ChristopherMoore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var star0: Star!
	@IBOutlet weak var star1: Star!
	@IBOutlet weak var star2: Star!
	@IBOutlet weak var star3: Star!
	@IBOutlet weak var star4: Star!
	

	let colors: [UIColor] = [.blue, .green, .yellow, .orange, .red]
	
	@IBAction func starTouched(_ sender: UIButton) {
		
		let stars = [star0, star1, star2, star3, star4]
		for i in 0...stars.count - 1 {

			// Turn the stars up to the touched a monocolor as indicated by colors index position and the stars index position.
			for turnColor in 0...i {
				stars[turnColor]!.fillColor = self.colors[i]
				stars[i]!.setNeedsDisplay()
			}
			
			// Animate the stars to grow very briefly to indicate a touch
			UIView.animate(withDuration: 0.3, animations: {
				stars[i]!.transform = CGAffineTransform(scaleX: 2, y: 2)
				stars[i]!.transform = CGAffineTransform(scaleX: 1, y: 1)
			})
			// Turn the stars after the touched star white
			if sender == stars[i] {
				for turnWhite in i...stars.count - 1 {
					if turnWhite == 4 {
						break
					}
					stars[turnWhite + 1]!.fillColor = .white
					stars[turnWhite + 1]!.setNeedsDisplay()

				}
				break
			}
		}

	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let stars = [star0, star1, star2, star3, star4]
		for i in 0...stars.count - 1 {
			
			//Animate the stars to slide in from the left to their positions.
			UIView.animate(withDuration: 0.3, animations: {
				stars[i]!.center.x += 100
				stars[i]!.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
				stars[i]!.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
				
			})
			
		}

	}

}

