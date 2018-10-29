//
//  ViewController.swift
//  core animation
//
//  Created by sj17abg on 29/10/2018.
//  Copyright © 2018 CSStestuser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ball1: UIImageView!
    
    @IBOutlet weak var ball2: UIImageView!
    var dynamicAnimator: UIDynamicAnimator!
    var gravityBehavior:UIDynamicBehavior!
    var collisionBehavior: UICollisionBehavior!
    var dynamicBehavior: UIDynamicItemBehavior!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dynamicAnimator=UIDynamicAnimator(referenceView:self.view)
        gravityBehavior=UIGravityBehavior(items:[ball1,ball2])
        dynamicAnimator.addBehavior(gravityBehavior)
        collisionBehavior=UICollisionBehavior(items:[ball1,ball2])
        dynamicAnimator.addBehavior(collisionBehavior)
        collisionBehavior.translatesReferenceBoundsIntoBoundary=true
        dynamicBehavior=UIDynamicItemBehavior(items:[ball1,ball2])
        dynamicBehavior.elasticity=0.7
        dynamicAnimator.addBehavior(dynamicBehavior)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

