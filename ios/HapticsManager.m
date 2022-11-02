//
//  HapticsOBJCManager.m
//  haptics
//
//  Created by mac on 11/2/22.
//

#import "React/RCTBridgeModule.h"

@interface
// MARK: module to export.
RCT_EXTERN_MODULE(HapticsManager, NSObject)

// MARK: methods goes here.
RCT_EXTERN_METHOD(notificationFeedback:(NSString)feedbackType)
RCT_EXTERN_METHOD(impactFeedback: (NSString)feedbackType)

@end
