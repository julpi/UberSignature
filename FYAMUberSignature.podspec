Pod::Spec.new do |spec|
  spec.name             = 'FYAMUberSignature'
  spec.version          = '1.0.4'
  spec.license          = { :type => 'BSD' }
  spec.homepage         = 'https://github.com/julpi/UberSignature'
  spec.author           = 'Uber'
  spec.summary          = 'Draw signatures in Swift and Objective-C. Fork with updated deployment target.'
  spec.source           = { :git => 'https://github.com/julpi/UberSignature.git', :tag => spec.version.to_s }
  spec.subspec 'ObjC' do |cs|
    cs.source_files = 'Sources/ObjC/**/*.{h,m}',
    cs.private_header_files = 'Sources/ObjC/Internal/*.h'
  end
  spec.subspec 'Swift' do |cs|
    cs.source_files = 'Sources/Swift/**/*.swift'
  end
  spec.default_subspecs = 'Swift'
  spec.framework        = 'CoreGraphics', 'Foundation', 'UIKit'
  spec.requires_arc     = true
  spec.ios.deployment_target = '12.0'
  spec.swift_version = '5.0'
end
