#
# Be sure to run `pod lib lint HJPodTestLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HJPodTestLib'
  s.version          = '1.0.1'
  s.summary          = 'HJPodTestLib.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
 description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/OldGhost366/HJPodTestLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'OldGhost366' => 'oldghost007@163.com' }
  s.source           = { :git => 'https://github.com/OldGhost366/HJPodTestLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'


  s.subspec 'NetworkEngine' do |networkEngine|
    networkEngine.source_files = 'HJPodTestLib/Classes/NetworkEngine/**/*'
    networkEngine.public_header_files = 'HJPodTestLib/Classes/NetworkEngine/**/*.h'
    # 设置依赖
    networkEngine.dependency 'AFNetworking', '~> 3.0'
  end
  s.subspec 'CommonUtils' do |utils|
    utils.source_files = 'HJPodTestLib/Classes/CommonUtils/**/*'
    utils.public_header_files = 'HJPodTestLib/Classes/CommonUtils/**/*.h'
  end
end
