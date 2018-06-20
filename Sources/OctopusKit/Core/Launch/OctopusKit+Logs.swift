//
//  OctopusKit+Logs.swift
//  OctopusKit
//
//  Created by ShinryakuTako@invadingoctopus.io on 2018/02/12.
//  Copyright © 2018 Invading Octopus. Licensed under Apache License v2.0 (see LICENSE.txt)
//

//  Logs are in a separate extension for convenience, e.g. so that a project may replace them with its own versions.

extension OctopusKit {
    
    // MARK: Global Logs
    
    /// A log for core or general engine events.
    public static var logForFramework   = OctopusLog(title: "🐙")
    
    /// A log for transitions within game states and entity states.
    public static var logForStates      = OctopusLog(title: "🐙🚦", suffix: "🚦")
    
    /// A log for the components architecture, including entities and component systems.
    public static var logForComponents  = OctopusLog(title: "🐙⚙️", suffix: "⚙️")
    
    /// A log for operations that involve loading, downloading, caching and writing game assets and related resources.
    public static var logForResources   = OctopusLog(title: "🐙📦", suffix: "📦")
    
    /// A log for deinitializations; when an object is freed from memory.
    public static var logForDeinits     = OctopusLog(title: "🐙💀", suffix: "💀")
    
    /// A log for events that may cause unexpected behavior but do not prevent the continued execution of the game.
    public static var logForWarnings    = OctopusLog(title: "🐙⚠️", suffix: "⚠️")
    
    /// A log for severe, unexpected events that may prevent the continued execution of the game.
    public static var logForErrors      = OctopusLog(title: "🐙🚫", suffix: "🚫")
    
    /// A log for verbose debugging information.
    public static var logForDebug       = OctopusLog(title: "🐙🐞")
    
    /// A log for developer tips to assist with fixing warnings and errors.
    public static var logForTips        = OctopusLog(title: "🐙💡")
}
