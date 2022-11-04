//
//  ViewController.swift
//  FrameworkTestApp
//
//  Created by Vladislav Suslov on 1.11.22.
//

import UIKit
import SpringAnimation

class MainViewController: UIViewController {
    
    
    @IBOutlet var descriptionLabel: UILabel! {
        didSet {
            descriptionLabel.text = animation.description
        }
    }
    @IBOutlet var springAnimationView: SpringView!
    
    private var animation = Animation.getAnimation()
    
    @IBAction func runButtonDidPressed(_ sender: UIButton) {
        setup(animation)
        springAnimationView.animate()
        descriptionLabel.text = animation.description
        animation = .getAnimation()
        updateTitle(for: sender)
    }
    
    private func setup(_ animation: Animation) {
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.force = animation.force
        springAnimationView.curve = animation.curve
        springAnimationView.animation = animation.preset
    }
    
    private func updateTitle(for button: UIButton) {
        button.setTitle("Run \(animation.preset)", for: .normal)
    }
    

}

