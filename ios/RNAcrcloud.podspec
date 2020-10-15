require 'json'

package = JSON.parse(File.read(File.join(__dir__,'..', 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.description  = package['description']
  s.homepage     = package['homepage']
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "Alexander <alexaner@adappt.co>" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/alex-kyd/react-native-acrcloud.git", :tag => "v#{s.version}" }
  s.source_files  = "RNAcrcloud/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  