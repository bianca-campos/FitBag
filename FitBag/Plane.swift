//
//  Plane.swift
//  FitBag
//
//  Created by Bianca Campos on 2018-12-12.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

import UIKit
import ARKit

class Plane: SCNNode {
    
    var planeGemoetry: SCNBox?
    var anchor: ARPlaneAnchor?
    
    
    init(anchor: ARPlaneAnchor) {
        super.init()
        
        // dimensions
        let width = CGFloat(anchor.extent.x)
        let length = CGFloat(anchor.extent.z)
        
        // height
        let planeHeight = 0.01 as CGFloat
        
        // geometry
        self.planeGemoetry = SCNBox(width: width, height: planeHeight, length: length, chamferRadius: 0)
        
        // transparent materials
        let transparentMaterial = SCNMaterial()
        transparentMaterial.diffuse.contents = UIColor.white.withAlphaComponent(0.0)
        
        // assign material
        self.planeGemoetry?.materials = [transparentMaterial, transparentMaterial, transparentMaterial, transparentMaterial, transparentMaterial]
        
        // create plane node
        let planeNode = SCNNode(geometry: self.planeGemoetry)
        
        // put on surface
        planeNode.position = SCNVector3(0, -planeHeight/2.0 , 0)
        
        // add node to self object
        self.addChildNode(planeNode)
        
        // set texture scale
        setTextureScale()
    }
    
    
    // update plane with updated anchor
    func updateWith(_ anchor: ARPlaneAnchor) {
        // update height, length
        self.planeGemoetry?.width = CGFloat(anchor.extent.x)
        self.planeGemoetry?.length = CGFloat(anchor.extent.z)
        
        // position
        self.position = SCNVector3(anchor.center.x, 0, anchor.center.z)
        
        // set texture scale
        setTextureScale()
    }
    
    
    // setup texture scale
    func setTextureScale()
    {
        let width = self.planeGemoetry?.width
        let length = self.planeGemoetry?.length

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

