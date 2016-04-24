Pod::Spec.new do |s|
  s.name             = "OND"
  s.version          = "0.1.2"
  s.summary          = "Bring back deprecated operators."

  s.homepage         = "https://github.com/ninjaprawn/OND"
  s.license          = 'MIT'
  s.author           = { "George Dan" => "george@ninjaprawn.com" }
  s.source           = { :git => "https://github.com/ninjaprawn/OND.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/theninjaprawn'

  s.ios.deployment_target = '8.0'

  s.source_files = 'OND/Classes/**/*'
end
