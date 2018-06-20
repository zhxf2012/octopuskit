//
//  VibrationComponent.swift
//  OctopusKit
//
//  Created by ShinryakuTako@invadingoctopus.io on 2017/10/28.
//  Copyright © 2018 Invading Octopus. Licensed under Apache License v2.0 (see LICENSE.txt)
//

import GameplayKit

#if os(iOS)
    
/// Abstract. Use `ImpactVibrationComponent`.
public class VibrationComponent<FeedbackGeneratorType: UIFeedbackGenerator>: OctopusComponent, OctopusUpdatableComponent {
    
    public var feedbackGenerator: FeedbackGeneratorType? // CHECK: Should this be weak?
    
    public var shouldVibrateOnNextFrame = false
    private var vibrateOnce = false
    
    public override func update(deltaTime seconds: TimeInterval) {
        
        if vibrateOnce {
            vibrate()
            vibrateOnce = false
            shouldVibrateOnNextFrame = false
        }
        
        if shouldVibrateOnNextFrame {
            
            createGenerator()
            
            if self.feedbackGenerator != nil {
                vibrateOnce = true
            }
            
            shouldVibrateOnNextFrame = false
            
        } else {
            feedbackGenerator = nil
        }
        
    }
    
    /// Abstract; must be implemented by subclass.
    public func createGenerator() {}
    
    /// Abstract; must be implemented by subclass.
    public func vibrate() {}
}

#else

public final class VibrationComponent: iOSExclusiveComponent {}
    
#endif

