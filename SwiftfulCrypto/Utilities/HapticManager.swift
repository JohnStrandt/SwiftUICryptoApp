//
//  HapticManager.swift
//  SwiftfulCrypto
//
//  Created by John Strandt on 7/28/23.
//


import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
