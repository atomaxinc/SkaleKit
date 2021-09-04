#
# Be sure to run `pod lib lint SkaleKit.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SkaleKit"
  s.version          = "0.5.3"
  s.summary          = "SkaleKit is a iOS api for accessing Skale electric scale."
  s.homepage         = "https://github.com/atomaxinc/SkaleKit"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Ryan" => "ryan@atomaxinc.com" }
  s.source           = { :git => "https://github.com/atomaxinc/SkaleKit.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '9.0'
  s.requires_arc = true

#s.source_files = 'Pod/Classes/**/*'
  #s.resource_bundles = {
  #  'SkaleKit' => ['Pod/Assets/*.png']
  #}

  # s.public_header_files = 'Pod/Classes/**/*.h'
    s.frameworks = 'UIKit', 'CoreBluetooth'
    s.ios.vendored_frameworks = 'Frameworks/SkaleKit.framework'
    s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
