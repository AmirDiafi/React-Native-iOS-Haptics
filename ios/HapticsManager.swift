//
//  HapticsManager.swift
//  haptics
//
//  Created by mac on 11/2/22.
//

// UINotificationFeedbackGenerator.FeedbackType


@objc(HapticsManager)
class HapticsManager: NSObject {
  @objc
  func notificationFeedback(_ feedbackType: NSString) {
    print("notification feedback 💩 --> \(feedbackType)")
    var typeToImpact: UINotificationFeedbackGenerator.FeedbackType
    // Types that comes from React Native
    switch feedbackType.lowercased {
    case "success":
      typeToImpact = UINotificationFeedbackGenerator.FeedbackType.success
    case "warning":
      typeToImpact = UINotificationFeedbackGenerator.FeedbackType.warning
    case "error":
      typeToImpact = UINotificationFeedbackGenerator.FeedbackType.error
    default:
      typeToImpact = UINotificationFeedbackGenerator.FeedbackType.success
    }
    HapticsImpactManager.instance.notification(type: typeToImpact)
  }
  
  // Mark Haptic Impact
  @objc
  func impactFeedback(_ feedbackType: NSString) {
    print("impact feedback 💩 --> \(feedbackType)")
    var typeToImpact: UIImpactFeedbackGenerator.FeedbackStyle
    // Types that comes from React Native
    switch feedbackType.lowercased {
    case "soft":
      typeToImpact = UIImpactFeedbackGenerator.FeedbackStyle.soft
    case "rigid":
      typeToImpact = UIImpactFeedbackGenerator.FeedbackStyle.rigid
    case "medium":
      typeToImpact = UIImpactFeedbackGenerator.FeedbackStyle.medium
    case "light":
      typeToImpact = UIImpactFeedbackGenerator.FeedbackStyle.light
    case "heavy":
      typeToImpact = UIImpactFeedbackGenerator.FeedbackStyle.heavy
    default:
      typeToImpact = UIImpactFeedbackGenerator.FeedbackStyle.medium
    }
    HapticsImpactManager.instance.impact(style: typeToImpact)
  }
  
  @objc
  static func requiresMainQueueSetup() -> Bool {
    return true
  }
}


