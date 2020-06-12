Pod::Spec.new do |s|
  s.name             = 'HYKit_Swift'
  s.version          = '0.0.1'
  s.summary          = 'HYKit_Swift.'
  s.description      = <<-DESC
swift 工具库和一些常用的方法
                       DESC

  s.homepage         = 'https://github.com/oceanfive/HYKit_Swift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '849638313@qq.com' => '849638313@qq.com' }
  s.source           = { :git => 'https://github.com/oceanfive/HYKit_Swift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'HYKit_Swift/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HYKit_Swift' => ['HYKit_Swift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
