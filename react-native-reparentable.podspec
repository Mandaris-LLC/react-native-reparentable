require 'json'
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.description  = package['description']
  s.homepage     = "https://github.com/Mandaris-LLC/react-native-reparentable"
  s.license      = "MIT"
  s.author       = package['author']
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/Mandaris-LLC/react-native-reparentable.git", :tag => "master" }
  s.source_files  = "ios/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"

end

  