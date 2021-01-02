//
//  ViewController.swift
//  CocoaPodsApp
//
//  Created by Igor Denisiuk on 12/30/20.


import Spring

enum CurrentAnimation {
    case shake, flipX, fadeIn, zoomOut, slideDown, flash
}

class ViewController: UIViewController {
    @IBOutlet var animationView: SpringView!
    @IBOutlet var runButton: SpringButton!
    
    var currentAnimation = CurrentAnimation.shake
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 15
        runButton.layer.cornerRadius = 10
        runButton.setTitle("Run Shake", for: .normal)
    }

    @IBAction func runButtonPressed(_ sender: SpringButton) {
        
        
        switch currentAnimation {
        case .shake:
            animationView.animation = Spring.AnimationPreset.Shake.rawValue
            animationView.curve = Spring.AnimationCurve.EaseIn.rawValue
            animationView.duration = 0.5
            animationView.animate()
            currentAnimation = .flipX
            runButton.setTitle("Run FlipX", for: .normal)
        case .flipX:
            animationView.animation = Spring.AnimationPreset.FlipX.rawValue
                animationView.curve = Spring.AnimationCurve.EaseIn.rawValue
                animationView.duration = 1
                animationView.animate()
                currentAnimation = .fadeIn
                runButton.setTitle("Run FadeIn", for: .normal)
        case .fadeIn:
            animationView.animation = Spring.AnimationPreset.FadeIn.rawValue
                animationView.curve = Spring.AnimationCurve.EaseIn.rawValue
                animationView.duration = 1
                animationView.animate()
                currentAnimation = .zoomOut
                runButton.setTitle("Run ZoomOut", for: .normal)
        case .zoomOut:
            animationView.animation = Spring.AnimationPreset.ZoomOut.rawValue
                animationView.curve = Spring.AnimationCurve.EaseIn.rawValue
                animationView.duration = 1
                animationView.animate()
                currentAnimation = .slideDown
                runButton.setTitle("Run SlideDown", for: .normal)
        case .slideDown:
            animationView.animation = Spring.AnimationPreset.SlideDown.rawValue
                animationView.curve = Spring.AnimationCurve.EaseIn.rawValue
                animationView.duration = 1
                animationView.animate()
                currentAnimation = .flash
                runButton.setTitle("Run Flash", for: .normal)
        case .flash:
            animationView.animation = Spring.AnimationPreset.Flash.rawValue
                animationView.curve = Spring.AnimationCurve.EaseIn.rawValue
                animationView.duration = 1
                animationView.animate()
                currentAnimation = .shake
                runButton.setTitle("Run Shake", for: .normal)
        }
        
        
    }
    
}

