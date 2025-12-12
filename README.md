# SkaleKit

[![CocoaPods](https://img.shields.io/cocoapods/v/SkaleKit.svg)](https://cocoapods.org/pods/SkaleKit)
[![Platform](https://img.shields.io/cocoapods/p/SkaleKit.svg)](https://cocoapods.org/pods/SkaleKit)
[![License](https://img.shields.io/cocoapods/l/SkaleKit.svg)](https://cocoapods.org/pods/SkaleKit)

SkaleKit is a Bluetooth Low Energy SDK for connecting to [Skale](https://www.skale.cc) scales on iOS.

## Features

- Real-time weight updates
- Device picker UI with BLE scanning
- Tare function
- Battery status monitoring
- Dark Mode support
- Localization (English, 繁體中文, 简体中文, 日本語)

## Requirements

- iOS 12.0+
- Xcode 14.0+
- Swift 5.0+

## Installation

### CocoaPods

```ruby
pod 'SkaleKit', '~> 1.0'
```

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/atomaxinc/SkaleKit.git", from: "1.0.0")
]
```

### Manual Installation

1. Download `SkaleKit.xcframework` from the [Releases](https://github.com/atomaxinc/SkaleKit/releases) page
2. Drag it into your Xcode project
3. Ensure it's added to "Frameworks, Libraries, and Embedded Content" with "Embed & Sign"

## Setup

Add Bluetooth permissions to your `Info.plist`:

```xml
<key>NSBluetoothAlwaysUsageDescription</key>
<string>This app uses Bluetooth to connect to your Skale scale.</string>
<key>NSBluetoothPeripheralUsageDescription</key>
<string>This app uses Bluetooth to connect to your Skale scale.</string>
```

## Usage

### Swift

```swift
import SkaleKit

class ViewController: UIViewController, SKSkaleDelegate {
    let skale = SKSkale()

    override func viewDidLoad() {
        super.viewDidLoad()
        skale.delegate = self
    }

    // Show device picker
    func connectToScale() {
        skale.showDevicePicker(onViewContoller: self) { error in
            if let error = error {
                print("Error: \(error)")
            }
        }
    }

    // Disconnect
    func disconnect() {
        skale.disconnect()
    }

    // MARK: - SKSkaleDelegate

    func skaleDidConnected(_ skale: SKSkale!) {
        print("Connected")
    }

    func skaleDidDisconnected(_ skale: SKSkale!) {
        print("Disconnected")
    }

    func skaleWeightDidUpdate(_ weight: Float32) {
        print("Weight: \(weight)g")
    }

    func skale(_ skale: SKSkale!, didErrorOccur error: Error!) {
        print("Error: \(error)")
    }
}
```

### Objective-C

```objc
#import <SkaleKit/SkaleKit.h>

@interface ViewController () <SKSkaleDelegate>
@property (nonatomic, strong) SKSkale *skale;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.skale = [[SKSkale alloc] init];
    self.skale.delegate = self;
}

- (void)connectToScale {
    [self.skale showDevicePickerOnViewContoller:self WithCompletion:^(NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        }
    }];
}

#pragma mark - SKSkaleDelegate

- (void)skaleDidConnected:(SKSkale *)skale {
    NSLog(@"Connected");
}

- (void)skaleDidDisconnected:(SKSkale *)skale {
    NSLog(@"Disconnected");
}

- (void)skaleWeightDidUpdate:(Float32)weight {
    NSLog(@"Weight: %.1fg", weight);
}

@end
```

## Example

See the [Example](Example/) folder for a complete Swift demo app.

To run the example:

1. Open `Example/SkaleKitExample.xcodeproj`
2. Build and run on a real device (BLE requires physical device)

## Changelog

### v1.0.0

- Migrated to XCFramework (supports device + simulator)
- Updated minimum iOS version to 12.0
- New Swift example app with modern UI
- Added Dark Mode support
- Added localization (EN, zh-Hant, zh-Hans, JA)

## License

SkaleKit is available under the MIT license. See the [LICENSE](LICENSE) file for more info.

## Author

Atomax Inc. - support@atomaxinc.com

Any feedback is welcomed! Please send feedback to service@atomaxinc.com
