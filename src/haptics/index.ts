import {NativeModules} from 'react-native';
import {HapticsImpactTypes, HapticsNotificationTypes} from '../types';

const {HapticsManager} = NativeModules;

const notificationFeedback = (type: HapticsNotificationTypes) => {
  HapticsManager.notificationFeedback(type);
};

const impactFeedback = (type: HapticsImpactTypes) => {
  HapticsManager.impactFeedback(type);
};

export {notificationFeedback, impactFeedback};
