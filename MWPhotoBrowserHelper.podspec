#
# Be sure to run `pod lib lint MWPhotoBrowserHelper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MWPhotoBrowserHelper'
  s.version          = '1.0'
  s.summary          = 'A short description of MWPhotoBrowserHelper.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/XGPASS/MWPhotoBrowserHelper'
  s.screenshots     = 'https://github.com/XGPASS/MWPhotoBrowserHelper/blob/master/images/develop.gif'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'XGPass' => 'syg90718@163.com' }
  s.source           = { :git => 'https://github.com/XGPASS/MWPhotoBrowserHelper.git', :tag => '1.0' }

  s.ios.deployment_target = '8.0'

  s.source_files = 'MWPhotoBrowserHelper/**/*.{h,m}'
  s.resources = ['MWPhotoBrowserHelper/**/*.{bundle}']

  s.frameworks = 'ImageIO', 'QuartzCore', 'AssetsLibrary', 'MediaPlayer'

  s.dependency 'MBProgressHUD', '~> 0.9'
  s.dependency 'DACircularProgress', '~> 2.3.1'
  s.dependency 'SDWebImage', '~> 4.2.2'

end
