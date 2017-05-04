lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'naivechain/version'

Gem::Specification.new do |spec|
  spec.name          = "naivechain"
  spec.version       = Naivechain::VERSION
  spec.authors       = ["Takashi Nakagawa"]
  spec.email         = ["tak1240@gmail.com"]

  spec.summary       = %q{ruby port of naivechain}
  spec.description   = %q{ruby port of naivechain}
  spec.homepage      = "https://github.com/takashi/naivechain"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
