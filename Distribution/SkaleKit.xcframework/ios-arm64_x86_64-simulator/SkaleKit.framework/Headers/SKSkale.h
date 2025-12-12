//
//  SKSkale.h
//  SkaleKit
//
//  Created by Ryan on 2015/4/30.
//  Copyright (c) 2015年 Atomax. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <SkaleKit/SKError.h>

NS_ASSUME_NONNULL_BEGIN

#ifdef __cplusplus
#define SK_EXTERN extern "C" __attribute__((visibility ("default")))
#else
#define SK_EXTERN extern __attribute__((visibility ("default")))
#endif

SK_EXTERN NSString * const SKErrorDomain;

/*! Connection callback function pointer */
typedef void (^PickerCompletion)(NSError * _Nullable error);

/*! Battery callback function pointer */
typedef void (^BatteryCompletion)(NSUInteger value);

@class SKSkale;

@protocol SKSkaleDataSource <NSObject>

@optional
- (nullable NSString *)titleForSelectAccessoryModalViewController;

- (nullable NSString *)deviceStringForSelectAccessoryModalViewController;

- (nullable UIColor *)backgroundColorForSelectAccessoryModalViewController;

- (nullable UIColor *)navigationBarColorForSelectAccessoryModalViewController;
@end

@protocol SKSkaleDelegate <NSObject>


- (void)skaleDidConnected:(SKSkale *)skale;
- (void)skaleDidDisconnected:(SKSkale *)skale;
- (void)skale:(SKSkale *)skale DidErrorOccur:(NSError *)error;
- (void)skaleWeightDidUpdate:(Float32)weight;

@optional
- (void)skaleDeviceDidClickButton:(NSUInteger)buttonIndex;

@end

@interface SKSkale : NSObject
@property (unsafe_unretained, nonatomic, nullable) id<SKSkaleDataSource> dataSource;
@property (unsafe_unretained, nonatomic, nullable) id<SKSkaleDelegate> delegate;
@property (assign, nonatomic) BOOL isAutoConnectEnabled;


/*!
 *  @property isConnected
 *
 *  @discussion Current connection status.
 */
@property (nonatomic, readonly) BOOL isConnected;



/* Connection */

/*!
 *  @method showDevicePickerOnViewContoller:WithCompletion:
 *
 *
 *  @discussion         Invoking this method will display a view controller to pick a Skale device. If connection succeed, view controller will dismiss automatically.
 *
 *
 */
- (void)showDevicePickerOnViewContoller:(UIViewController *)currentViewController WithCompletion:(PickerCompletion)completion;
- (void)readSkaleBatteryLifeWithCompletion:(BatteryCompletion)completion;
- (void)disconnect;
- (void)tare;
- (void)setLEDDisplayOn:(BOOL)isOn;
@end

NS_ASSUME_NONNULL_END
