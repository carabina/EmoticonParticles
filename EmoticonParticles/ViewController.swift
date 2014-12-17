//
//  ViewController.swift
//  EmoticonParticles
//
//  Created by Cem Olcay on 16/12/14.
//  Copyright (c) 2014 Cem Olcay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let emoticons = "🍕🍔🍟🍗🍖🍝🍣🍱🍚🍢🍞🍳🍦🍨🍩🍮🎂🍰☕YEMEKSEPETİ"
        let particle = EmoticonParticleView (frame: view.frame, emoticons: emoticons)
        view.addSubview(particle)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

