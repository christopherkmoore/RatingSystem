//
//  Stars_UIView.swift
//  RatingSystem
//
//  Created by Christopher Moore on 2/16/17.
//  Copyright © 2017 ChristopherMoore. All rights reserved.
//

import Foundation
import UIKit

class Star: UIButton {
	
	@IBInspectable var fillColor: UIColor = UIColor.yellow
	
	override func draw(_ rect: CGRect) {
		
		let lineWidth: CGFloat = 2.0

		var path = UIBezierPath()
		path.lineWidth = lineWidth
		
		//1
		path.move(to: CGPoint(x: bounds.width/5, y: bounds.height - lineWidth))
		//2
		path.addLine(to: CGPoint(x: bounds.width/2, y: 0 + lineWidth))
		//3
		path.addLine(to: CGPoint(x: (bounds.width/5 * 4), y: bounds.height - lineWidth))
		//4
		path.addLine(to: CGPoint(x: 0 + lineWidth, y: bounds.height/5 * 2))
		//5
		path.addLine(to: CGPoint(x: bounds.width - lineWidth, y: bounds.height/5 * 2))
		//1
		path.addLine(to: CGPoint(x: bounds.width/5, y: bounds.height - lineWidth))
		
		UIColor.black.setStroke()
		path.stroke()
		
		fillColor.setFill()
		path.fill()

		

	}
	

}
