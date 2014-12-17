//
//  EmoticonParticleView.swift
//  EmoticonParticles
//
//  Created by Cem Olcay on 16/12/14.
//  Copyright (c) 2014 Cem Olcay. All rights reserved.
//

import UIKit

class EmoticonParticleView: UIView {

    
    // MARK: Particles
    
    var emoticons: String!

    func CGImageRefOfCharacter (character: Character) -> CGImageRef {
        
        let label = UILabel (frame: CGRectMake(0, 0, 30, 30))
        label.text = String(character)
        label.font = UIFont.systemFontOfSize(30)
        label.textAlignment = .Center
        
        UIGraphicsBeginImageContextWithOptions(label.bounds.size, false, 0.0)
        label.drawViewHierarchyInRect(label.bounds, afterScreenUpdates: true)
        let ref = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return ref.CGImage
    }
    
    func setupEmiterLayer () {
        var cells: [CAEmitterCell] = []
        for c in emoticons {
            let emitterCell = CAEmitterCell ()
            emitterCell.scale = 0.4
            emitterCell.scaleRange = 0.2
            emitterCell.lifetime = 2
            emitterCell.birthRate = 3.0
            emitterCell.velocity = 100.0
            emitterCell.velocityRange = 100.0
            emitterCell.yAcceleration = 300.0
            emitterCell.emissionRange = CGFloat(M_PI)
            emitterCell.contents = CGImageRefOfCharacter(c)
            
            cells.append(emitterCell)
        }
        
        let emitterLayer = CAEmitterLayer ()
        emitterLayer.emitterPosition = CGPoint(x: self.bounds.size.width / 2, y: self.bounds.origin.y)
        emitterLayer.emitterZPosition = 10.0
        emitterLayer.emitterSize = CGSize(width: self.bounds.size.width, height: 0.0)
        emitterLayer.emitterShape = kCAEmitterLayerSphere
        emitterLayer.emitterCells = cells
        
        self.layer.addSublayer(emitterLayer)
    }
    
    
    
    // MARK: Lifecycle
    
    init(frame: CGRect, emoticons: String) {
        super.init(frame: frame)
        self.emoticons = emoticons
        self.setupEmiterLayer()
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
