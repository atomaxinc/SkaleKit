//
//  SKError.h
//  SkaleKit
//
//  Created by Ryan on 2015/4/30.
//  Copyright (c) 2015年 Atomax. All rights reserved.
//

#ifndef SkaleKit_SKError_h
#define SkaleKit_SKError_h

typedef enum
{
    SKErrorLECancel = 100,
    SKErrorLENotAvailable,
    SKErrorLEDeviceAlreadyConnected,
    SKErrorLEConnectionUnknown,
    SKErrorLEConnectionInvalidParameters,
    SKErrorLEConnectionInvalidHandle,
    SKErrorLEConnectionTimeout,
    
    SKErrorLEValidation,
    SKErrorLEInvalidDevice,
    
    SKErrorLEAccess,
    
    SKErrorUnknown,
    
} SKError;



#endif
