
Pod::Spec.new do |s|
  s.name         = "RNReactNativeReparentable"
  s.version      = "1.0.0"
  s.summary      = "RNReactNativeReparentable"
  s.description  = <<-DESC
                  RNReactNativeReparentable
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "alex@mandar.is" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNReactNativeReparentable.git", :tag => "master" }
  s.source_files  = "RNReactNativeReparentable/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  