Pod::Spec.new do |s|
  s.name             = 'InfiniteNavigationController-iOS'
  s.version          = '1.1.0'
  s.summary          = 'Library to keep the stack of view controllers limited in memory. Make your app with infinite navigation with low memory use.'
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
