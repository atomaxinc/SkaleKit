Pod::Spec.new do |s|
  s.name             = 'SkaleKit'
  s.version          = '1.0.1'
  s.summary          = 'Bluetooth SDK for Skale coffee scales'
  s.description      = <<-DESC
    SkaleKit provides Bluetooth Low Energy connectivity for Skale coffee scales.
    Features include real-time weight updates, tare function, battery status, and device picker UI.
    Supports iOS 12+ with Dark Mode and localization (English, Chinese, Japanese).
  DESC

  s.homepage         = 'https://github.com/atomaxinc/SkaleKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Atomax Inc.' => 'support@atomaxinc.com' }
  s.source           = { :git => 'https://github.com/atomaxinc/SkaleKit.git', :tag => s.version.to_s }

  s.platform         = :ios, '12.0'
  s.swift_versions   = ['5.0']

  # XCFramework distribution
  s.vendored_frameworks = 'Distribution/SkaleKit.xcframework'

  s.frameworks = 'CoreBluetooth', 'UIKit', 'Foundation'
end
