# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-image_slideshows'
  s.authors           = ['Jim Pruetting', 'Brice Sanchez']
  s.homepage          = 'http://www.refinerycms.com'
  s.version           = '4.0.0'
  s.description       = 'Ruby on Rails Image Slideshows extension for Refinery CMS'
  s.date              = '2012-12-12'
  s.summary           = 'Image Slideshows extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]

  # Runtime dependencies
  s.add_dependency 'refinerycms-core', '~> 4.0.0'
  s.add_dependency 'refinerycms-images', '~> 4.0.0'
  s.add_dependency 'acts_as_indexed', '~> 0.8.0'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 4.0.0'
end
