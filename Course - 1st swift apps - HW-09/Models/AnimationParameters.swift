//
//  AnimationParameters.swift
//  Course - 1st swift apps - HW-09
//
//  Created by Lev Litvak on 26.02.2020.
//  Copyright © 2020 Lev Litvak. All rights reserved.
//

import Spring

struct AnimationParameters {
    var preset = "slideLeft"
    var curve = "easeIn"
    var force: CGFloat = 1
    var duration: CGFloat = 1
    var delay: CGFloat = 0.3
    
    var description: String {
        return """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    mutating func chooseRandomParameters() {
        preset = SpringAnimationData.shared.AnimationPresets.randomElement() ?? "slideLeft"
        curve = SpringAnimationData.shared.AnimationCurves.randomElement() ?? "easeIn"
        force = CGFloat.random(in: 0.5...2)
        duration = CGFloat.random(in: 1...3)
        delay = CGFloat.random(in: 0.1...0.5)
    }
}
