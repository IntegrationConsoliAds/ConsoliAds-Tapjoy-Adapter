#
# Be sure to run `pod lib lint ConsoliAds-Tapjoy-Adapter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ConsoliAds-Tapjoy-Adapter'
  s.version          = '0.0.1'
  s.summary          = 'ConsoliAds-Tapjoy-Adapter a pod for CATapJoy adapter.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  'ConsoliAds-Tapjoy-Adapter a pod for CATapJoy adapter.'
                       DESC

  s.homepage         = 'https://github.com/IntegrationConsoliAds/ConsoliAds-Tapjoy-Adapter'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'IntegrationConsoliAds' => 'integration@consoliads.com' }
  s.source           = { :git => 'https://github.com/IntegrationConsoliAds/ConsoliAds-Tapjoy-Adapter.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

#  s.source_files = 'ConsoliAds-Tapjoy-Adapter/Classes/**/*'
s.vendored_frameworks = 'ConsoliAds-Tapjoy-Adapter/ConsoliAdsTapjoyAdapter.framework'
s.xcconfig = {"OTHER_LDFLAGS" => "-ObjC"}
s.frameworks = 'AdSupport','CFNetwork','CoreTelephony','MobileCoreServices','StoreKit'
s.libraries = 'c++','z'
s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
s.static_framework = true
  # s.resource_bundles = {
  #   'ConsoliAds-Tapjoy-Adapter' => ['ConsoliAds-Tapjoy-Adapter/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
