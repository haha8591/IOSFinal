//
//  Canvas.swift
//  draw
//
//  Created by User09 on 2020/1/5.
//  Copyright © 2020 ibob. All rights reserved.
//

import UIKit

class Canvas: UIView {

    var lineColor=UIColor.white
    var lineWidth:CGFloat=10
    var path:UIBezierPath!
    var touchPoint:CGPoint!
    var startingPoint:CGPoint!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        startingPoint=touches.first?.location(in: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        touchPoint=touches.first?.location(in: self)
        path=UIBezierPath()
        path.move(to: startingPoint)
        path.addLine(to: touchPoint)
        startingPoint=touchPoint
        draw()
    }
    func draw(){
        let shapeLayer=CAShapeLayer()
        shapeLayer.path=path.cgPath
        shapeLayer.strokeColor=lineColor.cgColor
        shapeLayer.lineWidth=lineWidth
        shapeLayer.fillColor=UIColor.clear.cgColor
        self.layer.addSublayer(shapeLayer)
        self.setNeedsDisplay()
    }
    func clearCanvas(){
        path.removeAllPoints()
        self.layer.sublayers=nil
        self.setNeedsDisplay()
    }
    func changecolor(){
        let shapeLayer=CAShapeLayer()
        
    }
    /*func save(){
        //UIImageWriteToSavedPhotosAlbum(self, nil, nil, nil)
    }*/
    /*
    func takeImage() -> UIImage {
        
    }*/
    
    


}
