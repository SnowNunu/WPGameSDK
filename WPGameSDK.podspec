#
# Be sure to run `pod lib lint WPGameSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WPGameSDK'
  s.version          = '1.0.0'
  s.summary          = 'A short description of WPGameSDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Mandora/WPGameSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mandora' => 'trc19930224@aliyun.com' }
  s.source           = { :git => 'git@github.com:trc19930224/WPGameSDK.git' }

  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.vendored_frameworks = 'Frameworks/WPGameSDK.framework'
  s.frameworks = 'UIKit', 'WebKit', 'Security'
  
  s.dependency 'AFNetworking'
  s.dependency 'IQKeyboardManager'
  s.dependency 'Masonry'
  s.dependency 'MJExtension'
  s.dependency 'MBProgressHUD'
  s.dependency 'SAMKeychain'
  s.dependency 'WMDragView'
  s.dependency 'YYWebImage'
  s.dependency 'TZImagePickerController/Basic'
  s.dependency 'Qiniu'
  
end
