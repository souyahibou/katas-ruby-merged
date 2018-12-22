Gem::Specification.new do |gem|
  gem.name        = 'stnt'
  gem.version     = '0.0.0.kata'
  gem.licenses    = ['MIT']
  gem.authors     = ["Paris Ruby Workshop"]
  gem.files       = Dir["lib/**/*.rb"]
  gem.executables = ['stnt']

  gem.add_runtime_dependency "rspec"

  gem.add_development_dependency "sinatra"
  gem.add_development_dependency "rack"
  gem.add_development_dependency "pry"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rack-test"
end
