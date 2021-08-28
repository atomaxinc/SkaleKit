# SkaleKit

[![CI Status](http://img.shields.io/travis/Ryan/SkaleKit.svg?style=flat)](https://travis-ci.org/Ryan/SkaleKit)
[![Version](https://img.shields.io/cocoapods/v/SkaleKit.svg?style=flat)](http://cocoapods.org/pods/SkaleKit)
[![License](https://img.shields.io/cocoapods/l/SkaleKit.svg?style=flat)](http://cocoapods.org/pods/SkaleKit)
[![Platform](https://img.shields.io/cocoapods/p/SkaleKit.svg?style=flat)](http://cocoapods.org/pods/SkaleKit)

## Usage

SkaleKit is a wrapper for accessing [**Skale**](https://www.skale.cc) [BuletoothLowEnergy](http://en.wikipedia.org/wiki/Bluetooth_low_energy) electric scale. We use [CoreBluetooth](https://developer.apple.com/library/ios/documentation/NetworkingInternetWeb/Conceptual/CoreBluetooth_concepts/AboutCoreBluetooth/Introduction.html#//apple_ref/doc/uid/TP40013257) framework to access [**Skale**](https://www.skale.cc). Via SkaleKit, developers can easily read weight from physical scale and do what you want with that data. 

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

* CoreBluetooth.framework


## Installation

SkaleKit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:


```ruby
pod "SkaleKit"
```


##Get Started

####Initialize
Initialize the instance of SKSKale class.

<pre>
SKSkale *skale = [[SKSkale alloc] init];
</pre>


####Assign Delegate

<pre>skale.delegate = self;</pre>


####Implement delegate methods

<pre>
- (void)skaleDidConnected:(SKSkale *)skale
{

}

- (void)skaleDidDisconnected:(SKSkale *)skale
{
}

- (void)skale:(SKSkale *)skale DidErrorOccur:(NSError *)error
{

}

- (void)skaleWeightDidUpdate:(Float32)weight
{

}

</pre>


##Example

In SkaleKit project, we demostrate you a simple sample code to access the weight data. You will see how we get the data then display on the screen. 

## Author

Ryan, ryan@atomaxinc.com

## License

SkaleKit is available under the MIT license. See the LICENSE file for more info.


##Additional Notes

Created by Ryan Chen, engineer at Atomax, on 16/07/09.

Copyright (c) 2021年 Atomax Inc. All rights reserved.

Any feedback is welcomed, please send feekback to 
<service@atomaxinc.com> or [![facebook](http://www.atomaxinc.com/ref_images/facebook.png)](https://www.facebook.com/pages/Atomax/154955394547353)