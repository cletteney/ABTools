#
# Be sure to run `pod lib lint ABTools.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ABTools'
  s.version          = '0.3.0'
  s.summary          = 'Various tools to assist App Brewery developers'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC

  'ABTools is a library of various extensions and objects created to speed up the development process and enforce a development standard within App Brewery iOS projects.'
  
                       DESC

  s.homepage         = 'https://github.com/cletteney/ABTools'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Chase Letteney' => 'lettene3@uwm.edu' }
  s.source           = { :git => 'https://github.com/cletteney/ABTools.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'
  s.swift_version = '4.0'
  s.source_files = 'Classes/**/*'
  
  # s.resource_bundles = {
  #   'ABTools' => ['ABTools/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
