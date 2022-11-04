//
//  AnimationParameters.swift
//  FrameworkTestApp
//
//  Created by Vladislav Suslov on 1.11.22.
//

import Foundation
import SpringAnimation


struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
    """
    preset: \(preset)
    curve: \(curve)
    force: \(string(from: force))
    duration: \(string(from:duration))
    delay: \(string(from:delay))
    """
    }
    
    static func getAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.animationPresets.randomElement()?.rawValue ?? "",
            curve: DataStore.shared.animationCurves.randomElement()?.rawValue ?? "",
            force: Double.random(in: 0.5 ... 2),
            duration: Double.random(in: 0.5 ... 2),
            delay: 0.3
        )
    }
    
    private func string(from double: Double) -> String {
        String(format: "%.2f", double)
    }
}
