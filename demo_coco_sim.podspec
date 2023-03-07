Pod::Spec.new do |spec|
  spec.name         = "demo_coco_sim"
  spec.version      = "1.0.0.0"
  spec.summary      = "recognition."
  spec.description  = "API’s."
  spec.homepage     = "https://github.com/"
  spec.license      = "MIT"
  spec.author       = { "Scan" => "connect@scan.com" }
  spec.platform     = :ios, "12.0"
  spec.static_framework = true
  spec.source       = { :git => "https://github.com/Anaslokhandwala/demococo.git", :tag => "1.0.0.0" }
  spec.preserve_paths = 'demococo.framework'
  spec.vendored_frameworks = 'demococo.framework'
  spec.requires_arc = true
  spec.swift_version = "5.0"
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
