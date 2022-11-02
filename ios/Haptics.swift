//
//  Haptics.swift
//  haptics
//
//  Created by mac on 11/2/22.
//


import SwiftUI

struct HapticsImpactManager {
    static let instance = HapticsImpactManager()
    
    func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        let generator  = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    
    func impact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }
}

struct HapticView: View {
    var body: some View {
        VStack {
            Text(" ------ Notifications Haptics ------")
            Button(action: {
              HapticsImpactManager.instance.notification(type: .error)
            }) {
              HapticButton(title: "Error")
            }
            Button(action: {
              HapticsImpactManager.instance.notification(type:.success)
            }) {
              HapticButton(title: "Success")
            }
            Button(action: {
              HapticsImpactManager.instance.notification(type: .warning)
            }) {
              HapticButton(title: "Warning")
            }
            Text(" ------ Impact Haptics ------")
            Button(action: {
              HapticsImpactManager.instance.impact(style:.heavy)
            }) {
              HapticButton(title: "Heavy")
            }
            Button(action: {
                HapticsImpactManager.instance.impact(style: .light)
            }) {
                HapticButton(title: "Light")
            }
            Button(action: {
                HapticsImpactManager.instance.impact(style: .medium)
            }) {
                HapticButton(title: "Medium")
            }
            Button(action: {
                HapticsImpactManager.instance.impact(style: .rigid)
            }) {
                HapticButton(title: "Rigid")
            }
            Button(action: {
                HapticsImpactManager.instance.impact(style: .soft)
            }) {
                HapticButton(title: "Soft")
            }
        }
        .padding()
    }
}

struct HapticView_Previews: PreviewProvider {
    static var previews: some View {
        HapticView()
    }
}

struct HapticButton: View {
    let title: String
    var body: some View {
        Text(title)
            .foregroundColor(.white)
            .padding()
            .background(Color.primary)
    }
}
