//
//  RatingSystem_UIView.swift
//  RatingSystem
//
//  Created by modelf on 2/16/17.
//  Copyright © 2017 ChristopherMoore. All rights reserved.
//

import Foundation
//
//  PushButton.swift
//  Packed!
//
//  Created by Christopher Moore on 1/4/17.
//  Copyright © 2017 ChristopherMoore. All rights reserved.
//

import Foundation
import UIKit

class PlusSign: UIButton {
	
	override func draw(_ rect: CGRect) {


		let lineWidth: CGFloat = 4.0
		let paddingOnEdges: CGFloat = 8.0
		
		var plusPath = UIBezierPath()
		plusPath.lineWidth = lineWidth
		
		UIColor.orange.setFill()
		UIColor.black.setStroke()
	
		//verticle stroke
		
		plusPath.move(to: CGPoint(x: bounds.width/5 * 2, y: 0 + paddingOnEdges))
		plusPath.addLine(to: CGPoint(x: bounds.width/5 * 2, y: bounds.height/5 * 2))
		plusPath.addLine(to: CGPoint(x: 0 + paddingOnEdges, y: bounds.height/5 * 2))
		plusPath.addLine(to: CGPoint(x: 0 + paddingOnEdges, y: bounds.height/5 * 3))
		plusPath.addLine(to: CGPoint(x: bounds.width/5 * 2, y: bounds.height/5 * 3))
		plusPath.addLine(to: CGPoint(x: bounds.width/5 * 2, y: bounds.height - paddingOnEdges))
		plusPath.addLine(to: CGPoint(x: bounds.width/5 * 3, y: bounds.height - paddingOnEdges))
		plusPath.addLine(to: CGPoint(x: bounds.width/5 * 3, y: bounds.height/5 * 3))
		plusPath.addLine(to: CGPoint(x: bounds.width - paddingOnEdges, y: bounds.height/5 * 3))
		plusPath.addLine(to: CGPoint(x: bounds.width - paddingOnEdges, y: bounds.height/5 * 2))
		plusPath.addLine(to: CGPoint(x: bounds.width/5 * 3, y: bounds.height/5 * 2))
		plusPath.addLine(to: CGPoint(x: bounds.width/5 * 3, y: 0 + paddingOnEdges))
		plusPath.addLine(to: CGPoint(x: bounds.width/5 * 2 - 2, y: 0 + paddingOnEdges))
		plusPath.stroke()
		plusPath.fill()


		
	}
	
}
