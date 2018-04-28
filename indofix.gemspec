
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "indofix/version"

Gem::Specification.new do |spec|
  spec.name          = "indofix"
  spec.version       = Indofix::VERSION
  spec.authors       = ["Muhammad K. Huda"]
  spec.email         = ["hello@mkhuda.com"]

  spec.summary       = %q{Affixist for Bahasa}
  spec.description   = %q{Check the word base derived from affixes in Bahasa}
  spec.homepage      = "https://github.com/iBahasa/indofix"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = Dir['lib/**/*.rb']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "verbal_expressions", "~> 0.1.5"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.required_ruby_version = '~> 2.2.0'
end
