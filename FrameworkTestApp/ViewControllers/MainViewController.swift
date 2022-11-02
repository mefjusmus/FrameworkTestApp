//
//  ViewController.swift
//  FrameworkTestApp
//
//  Created by Vladislav Suslov on 1.11.22.
//

import UIKit
import SpringAnimation

class MainViewController: UIViewController {
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    
    @IBOutlet var springAnimationView: SpringView!
    
    private var parameters = AnimationManager.getParameters()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabelText()
    }
    
    

    @IBAction func runButtonDidPressed(_ sender: UIButton) {
        setupAnimation()
        springAnimationView.animate()
        updateLabelText()
        parameters = AnimationManager.getParameters()
        updateTitle(for: sender)
    }
    
    private func setupAnimation() {
        springAnimationView.duration = CGFloat(parameters.duration)
        springAnimationView.delay = CGFloat(parameters.delay)
        springAnimationView.force = CGFloat(parameters.force)
        springAnimationView.curve = parameters.curve
        springAnimationView.animation = parameters.preset
        springAnimationView.animateFrom = false
    }
    
    private func updateLabelText() {
        presetLabel.text = "preset: \(parameters.preset)"
        curveLabel.text = "curve: \(parameters.curve)"
        forceLabel.text = "force: \(string(from:parameters.force))"
        durationLabel.text = "duration: \(string(from: parameters.duration))"
        delayLabel.text = "delay: \(string(from: parameters.delay))"
    }
    
    private func updateTitle(for button: UIButton) {
        button.setTitle("Run \(parameters.preset)", for: .normal)
    }
    
    
    private func string(from float: Float) -> String {
        String(format: "%.2f", float)
    }
    

}

