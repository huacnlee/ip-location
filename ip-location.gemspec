Gem::Specification.new do |s|
  s.name         = 'ip-location'
  s.version      = '0.1.0'
  s.licenses     = ['MIT']
  s.summary      = "Query location with IP address!"
  s.description  = "Query location with IP address by Taobao Service!"
  s.authors      = ["Jason Lee"]
  s.email        = 'huacnlee@gmail.com'
  s.files        = Dir.glob("lib/**/*") + %w(README.md LICENSE)
  s.require_path = 'lib'
  s.homepage     = 'https://github.com/huacnlee/ip-location'
end
