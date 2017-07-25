Gem::Specification.new do |s|
  s.name = 'suggestgrid'
  s.version = '0.2.0'
  s.summary = 'SuggestGrid Ruby SDK'
  s.description = 'Personalization made Simple'
  s.authors = ['SuggestGrid']
  s.email = 'support@suggestgrid.com'
  s.homepage = 'https://suggestgrid.com'
  s.license = 'MIT'
  s.add_dependency('logging')
  s.add_dependency('faraday')
  s.add_dependency('test-unit')
  s.add_dependency('certifi')
  s.add_dependency('faraday-http-cache')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
