$:.push File.expand_path("../lib", __FILE__)
require "knife-common-config/version"

Gem::Specification.new do |s|
  s.name        = 'knife-common-config'
  s.version     = Knife::CommonConfig::VERSION
  s.date        = Time.now.strftime("%Y-%m-%d")
  s.summary     = "Multiple levels of configuration in knife"
  s.description = "Multiple levels of configuration in knife"
  s.authors     = ["David Ackerman"]
  s.email       = 'david.ackerman@cybera.ca'
  s.homepage    = "https://github.com/cybera/knife-common-config"
  s.files       = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end