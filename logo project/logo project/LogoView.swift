//
//  LogoDraw.swift
//  logo project
//
//  Created by Bhawnish Kumar on 4/16/20.
//  Copyright © 2020 Bhawnish Kumar. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable // Interface Builder will render the view directly in the canvas
class LogoView: UIView {

    let offset: CGFloat = 10.0
    let debug: CGFloat = 0.0
    let lambdaRed = CGColor(srgbRed: 170.0/255, green: 42.0/255, blue: 56.0/255, alpha: 1.0)

    // MARK: - View Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = UIColor.clear
    }
    
    override func draw(_ rect: CGRect) {
    
    guard let context = UIGraphicsGetCurrentContext() else { return }
         let scaleFactor: CGFloat = (rect.width - 20.0) / 100.0
        
        var rect = CGRect(x: 10, y: 10,
                          width: 100 * scaleFactor,
                          height: 78 * scaleFactor)
        context.addRect(rect)
        context.setFillColor(lambdaRed)
        context.fillPath()
        
        //Bottom angle added
        var startPoint  = CGPoint(x: offset,
                                         y: offset + ((77.9 + debug) * scaleFactor))
               var nextPoint   = CGPoint(x: offset + (50.0 * scaleFactor),
                                         y: offset + ((77.9 + 37 + debug) * scaleFactor))
               var endPoint    = CGPoint(x: offset + (100.0 * scaleFactor),
                                         y: offset + ((77.9 + debug) * scaleFactor))
               context.beginPath()
               context.move(to: startPoint)
               context.setFillColor(lambdaRed)
               context.addLine(to: nextPoint)
               context.addLine(to: endPoint)
               context.closePath()
               context.fillPath()
        
        // inside triangle
        startPoint  = CGPoint(x: offset + (22 * scaleFactor),
                                     y: offset + (65 * scaleFactor))
               nextPoint   = CGPoint(x: offset + (50 * scaleFactor),
                                     y: offset + (15 * scaleFactor))
               endPoint    = CGPoint(x: offset + (78 * scaleFactor),
                                     y: offset + (65 * scaleFactor))
        
        context.beginPath()
        context.move(to: startPoint)
        context.setFillColor(UIColor.white.cgColor)
        context.addLine(to: nextPoint)
        context.addLine(to: endPoint)
        context.closePath()
        context.fillPath()
        
        // cutting out the triangle
        startPoint  = CGPoint(x: offset + (35 * scaleFactor),
                                    y: offset + (66 * scaleFactor))
              nextPoint   = CGPoint(x: offset + (50 * scaleFactor),
                                    y: offset + (40 * scaleFactor))
              endPoint    = CGPoint(x: offset + (65 * scaleFactor),
                                    y: offset + (66 * scaleFactor))
              context.beginPath()
              context.move(to: startPoint)
              context.setFillColor(lambdaRed)
              context.addLine(to: nextPoint)
              context.addLine(to: endPoint)
              context.closePath()
              context.fillPath()
        
         rect = CGRect(x: offset + (35 * scaleFactor),
                              y: offset + (10 * scaleFactor),
                              width: (30 * scaleFactor),
                              height: (15 * scaleFactor))
                context.addRect(rect)
      
                context.setFillColor(lambdaRed)
                context.fillPath()

        
}
    

}
