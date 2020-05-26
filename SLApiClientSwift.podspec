Pod::Spec.new do |s|
  s.name = 'SLApiClientSwift'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.version = '1.2.132'
  s.source = { :git => 'https://github.com/MadBrains/SLApiClientSwift', :tag => '1.2.132' }
  s.authors = 'Aleksey Gulyaev'
  s.social_media_url = 'https://gitlab.itnap.ru/open-source/sl-client/swift-sl-client'
  s.license = 'Proprietary'
  s.homepage = 'https://gitlab.itnap.ru/open-source/sl-client/swift-sl-client'
  s.summary = 'SL Client for swift'
  s.documentation_url = 'https://gitlab.itnap.ru/open-source/sl-client/swift-sl-client'
  s.source_files = 'SLApiClientSwift/Classes/**/*.swift'
  s.dependency 'Alamofire', '~> 4.7.3'
end
