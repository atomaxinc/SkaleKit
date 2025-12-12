//
//  SKError.h
//  SkaleKit
//
//  Created by Ryan on 2015/4/30.
//  Copyright (c) 2015年 Atomax. All rights reserved.
//

#ifndef SkaleKit_SKError_h
#define SkaleKit_SKError_h

#import <Foundation/Foundation.h>

/// Error codes for SkaleKit SDK
typedef NS_ENUM(NSInteger, SKError) {
    /// User cancelled the device picker
    SKErrorLECancel = 100,
    /// Bluetooth Low Energy is not available on this device
    SKErrorLENotAvailable,
    /// A device is already connected
    SKErrorLEDeviceAlreadyConnected,
    /// Unknown connection error occurred
    SKErrorLEConnectionUnknown,
    /// Invalid connection parameters
    SKErrorLEConnectionInvalidParameters,
    /// Invalid connection handle
    SKErrorLEConnectionInvalidHandle,
    /// Connection timed out
    SKErrorLEConnectionTimeout,
    /// Validation error occurred
    SKErrorLEValidation,
    /// Invalid device - not a compatible Skale device
    SKErrorLEInvalidDevice,
    /// Access error - failed to read or write to device
    SKErrorLEAccess,
    /// Unknown error
    SKErrorUnknown,
};

#endif
