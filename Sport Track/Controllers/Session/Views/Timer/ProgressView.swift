//
//  ProgressView.swift
//  Sport Track
//
//  Created by Максим Зыкин on 19.08.2024.
//

import UIKit

extension TimerView {
    
    final class ProgressView: UIView {
        func drawProgress(percent: CGFloat) {
            
            let circleFrame = UIScreen.main.bounds.width - (15 + 40) * 2
            let radius = circleFrame / 2
            let center = CGPoint(x: radius, y: radius)
            let startAngle = -CGFloat.pi * 7 / 6
            let endAngle = CGFloat.pi * 1 / 6
            
            let circlePath = UIBezierPath(arcCenter: center,
                                          radius: radius,
                                          startAngle: startAngle,
                                          endAngle: endAngle,
                                           clockwise: true)
            
            let circleLayer = CAShapeLayer()
            circleLayer.path = circlePath.cgPath
            circleLayer.strokeColor = Resouces.Colors.active.cgColor
            circleLayer.lineWidth = 20
            circleLayer.strokeEnd = percent
            circleLayer.fillColor = UIColor.clear.cgColor
            circleLayer.lineCap = .round
            
            layer.addSublayer(circleLayer )
        }
    }
    
}
