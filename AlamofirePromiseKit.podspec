Pod::Spec.new do |spec|

  spec.name         = "AlamofirePromiseKit"
  spec.version      = "1.0.0"
  spec.license      = "Apache 2.0"
  spec.summary      = "Use 'PromiseKit' to extend 'Alamofire'"
  spec.homepage     = "https://github.com/aliyun/AlamofirePromiseKit" 
  spec.author       = { "wb-hx510875" => "wb-hx510875@alibaba-inc.com" }

  spec.source       = { :git => spec.homepage + '.git', :tag => spec.version }
  spec.source_files = 'Sources/**/*.swift'

  spec.ios.framework   = 'Foundation'

  spec.ios.deployment_target     = '8.0'
  spec.osx.deployment_target     = '10.11'
  spec.watchos.deployment_target = '2.0'
  spec.tvos.deployment_target    = '9.0'

  spec.dependency 'AwaitKit',  '5.2.0'
  spec.dependency 'Alamofire', '4.9.1'
  spec.swift_version = '5.1'

end
