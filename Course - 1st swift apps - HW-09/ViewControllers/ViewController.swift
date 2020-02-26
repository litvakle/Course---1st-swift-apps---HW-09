//
//  ViewController.swift
//  Course - 1st swift apps - HW-09
//
//  Created by Lev Litvak on 26.02.2020.
//  Copyright © 2020 Lev Litvak. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: SpringLabel!
    @IBOutlet weak var animationButton: SpringButton!
    
    // MARK: - Private properties
    private var animationParameters = AnimationParameters()
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.layer.cornerRadius = 15
        animationButton.layer.cornerRadius = 10
        
        updateAnimationParameters()
    }

    // MARK: - IB Actions
    @IBAction func animationButtonPressed(_ sender: SpringButton) {
        animationLabel.text = animationParameters.description
        
        animationView.animation = animationParameters.preset
        animationView.force = animationParameters.force
        animationView.duration = animationParameters.duration
        animationView.delay = animationParameters.delay
        animationView.curve = animationParameters.curve
        animationView.animate()
        
        updateAnimationParameters()
    }
    
    // MARK: - Private methods
    func updateAnimationParameters() {
        animationParameters.chooseRandomParameters()
        animationButton.setTitle("Run \(animationParameters.preset)", for: .normal)
    }
}

