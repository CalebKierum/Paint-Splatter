//
//  ViewController.swift
//  PaintSplatter
//
//  Created by Caleb Kierum on 8/4/19.
//  Copyright © 2019 Caleb Kierum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var metal: metalState!
    var water: WatercolorSimulation!
    
    var imageView: UIImageView!
    
    func simulate() {
        metal.prepareFrame()
        
        let result = water.simulate()
        
        metal.finishFrame()
        
        imageView.image = result!.toImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.black
        view.isMultipleTouchEnabled = true
        Random.initialize()
        metal = metalState()
        water = WatercolorSimulation(state: metal, resolution: 850)
        executeContinuously(block: simulate)
        
        imageView = UIImageView(frame: view.frame)
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        view.addSubview(imageView)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        for touch in touches {
            let location = touch.location(in: view)
            let lx = ((location.x - (width / 2.0)) / width) * 2.0
            let ly = (-(location.y - (height / 2.0)) / width) * 2.0
            water.paintSplatter(pos: CGPoint(x: lx, y: ly))
        }
    }
}
