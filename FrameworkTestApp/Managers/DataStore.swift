//
//  DataStore.swift
//  FrameworkTestApp
//
//  Created by Vladislav Suslov on 3.11.22.
//

import Foundation
import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let animationPresets = AnimationPreset.allCases
    let animationCurves = AnimationCurve.allCases
    
    private init() {}
}
