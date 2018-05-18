Pod::Spec.new do |s|
  s.name             = 'InfiniteNavigationController-iOS'
  s.version          = '1.0.0'
  s.summary          = 'Library to keep the ViewControllers stack limited.'
  s.homepage         = "https://github.com/allanragec/InfiniteNavigationController-iOS"
  s.license          = {
                         :type => "LPGL 2.1",
                         :file => "LICENSE"
                       }
  s.author           = { 
                        'Allan Melo' => 'allanragec@gmail.com' 
                       }

  s.source           = { 
                         :git => 'https://github.com/allanragec/InfiniteNavigationController-iOS.git', 
                         :tag => s.version.to_s 
                       }

  s.ios.deployment_target = '8.0'
  s.source_files = 'InfiniteNavigationController/Source/**/*'
  s.swift_version = '4.0'
end
