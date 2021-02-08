#
# Be sure to run `pod lib lint ASHUDClassTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ASHUDClassTool'
  s.version          = '0.5.0'
  s.summary          = '基于MBProgressHUD的提醒框'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
 '基于MBProgressHUD的提醒框 ^^'
                       DESC

  s.homepage         = 'https://github.com'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liuke' => 'liukecyl@163.com' }
  s.source           = { :git => 'https://github.com/wodely/ASHUDClassTool.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  #s.resource = 'ASHUDClassTool/Assets/Settings.bundle'
  s.subspec 'code' do |codeSpec|
  codeSpec.source_files = 'ASHUDClassTool/Classes/code/**/*'
  end
 
 # s.source_files = 'ASHUDClassTool/Classes/ASHUDClassTool/**/*'
  #多个在地址后逗号隔开
  s.subspec 'Resource' do |imgSpec|
  imgSpec.resource_bundles = {
   'HUDClassTool' => ['ASHUDClassTool/Assets/HUDClassTool.bundle']
  }
  end
  #s.subspec 'Resource' do |ss|
  #ss.resource = 'ASHUDClassTool/Assets/Settings.bundle'
  #end
  #s.resource_bundles = {
  #'ASHUDClassTool' => ['ASHUDClassTool/Assets/Settings.bundle']
  #}

 #s.public_header_files = 'ASHUDClassTool/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'MBProgressHUD'
  s.dependency 'SDWebImage'
end
