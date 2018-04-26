Pod::Spec.new do |s|
  s.name = 'CPFChain+UIKit'
  s.version = '0.1.0'
  s.summary = 'UIKit链式调用'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { 'chenpengfei' => 'afeiafeia@163.com' }
  s.source = { :git => 'https://github.com/Loadar/CPFChain-UIKit.git', :tag => s.version.to_s }
  s.homepage = 'https://github.com/Loadar/CPFChain-UIKit'

  s.ios.deployment_target = "8.0"
  s.source_files = 'Classes/*.swift'
  s.requires_arc = true
  s.dependency 'CPFChain'
end
