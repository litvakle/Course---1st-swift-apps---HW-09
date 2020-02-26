//
//  SpringAnimationData.swift
//  Course - 1st swift apps - HW-09
//
//  Created by Lev Litvak on 26.02.2020.
//  Copyright © 2020 Lev Litvak. All rights reserved.
//

class SpringAnimationData {
    static var shared = SpringAnimationData()
    
    let AnimationPresets = ["slideLeft", "slideRight", "slideDown",
                            "slideUp", "squeezeLeft", "squeezeRight",
                            "squeezeDown", "squeezeUp", "fadeIn",
                            "fadeOut", "fadeOutIn", "fadeInLeft",
                            "fadeInRight", "fadeInDown", "fadeInUp",
                            "zoomIn", "zoomOut", "fall", "shake",
                            "pop", "flipX", "flipY", "morph",
                            "squeeze", "flash", "wobble", "swing"]
    
    let AnimationCurves = ["easeIn", "easeOut", "easeInOut", "linear",
                           "spring", "easeInSine", "easeOutSine",
                           "easeInOutSine", "easeInQuad", "easeOutQuad",
                           "easeInOutQuad", "easeInCubic", "easeOutCubic",
                           "easeInOutCubic", "easeInQuart", "easeOutQuart",
                           "easeInOutQuart", "easeInQuint", "easeOutQuint",
                           "easeInOutQuint", "easeInExpo", "easeOutExpo",
                           "easeInOutExpo", "easeInCirc", "easeOutCirc",
                           "easeInOutCirc", "easeInBack", "easeOutBack",
                           "easeInOutBack"]
}
