# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspark/spark/version'

Gem::Specification.new do |spec|
  spec.name          = "rspark-spark"
  spec.version       = Rspark::Spark::VERSION
  spec.authors       = ["Radu-Bogdan Croitoru"]
  spec.email         = ["croitoruradubogdan@gmail.com"]

  spec.summary       = %q{Sparklines for your shell}
  spec.description   = %q{Displays beautiful graphs to use in the terminal}
  spec.homepage      = "https://github.com/radubogdan/rspark-spark"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
