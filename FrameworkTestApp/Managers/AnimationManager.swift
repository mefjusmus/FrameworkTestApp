//
//  AnimationManager.swift
//  FrameworkTestApp
//
//  Created by Vladislav Suslov on 2.11.22.
//

import Foundation
import SpringAnimation


class AnimationManager {
    static func getParameters() -> AnimationParameters {
        AnimationParameters(
            preset: AnimationPreset.allCases.randomElement()?.rawValue ?? "",
            curve: AnimationCurve.allCases.randomElement()?.rawValue ?? "",
            force: Float.random(in: 0.5 ... 2),
            duration: Float.random(in: 0.5 ... 2),
            delay: 0.3
        )
    }
}
