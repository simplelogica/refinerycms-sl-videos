# Encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)
require 'refinery/videos/version'

version = Refinery::Videos::Version.to_s

Gem::Specification.new do |s|
  s.name              = %q{refinerycms-sl-videos}
  s.version           = version
  s.description       = %q{Ruby on Rails Videos extension for Refinery CMS.}
  s.summary           = %q{A page for videos from diferent sources, in a blog format with multilingual support, custom urls and seo.}
  s.email             = %q{simplelogica@simplelogica.net}
  s.homepage          = %q{http://www.github.com/simplelogica/refinerycms-sl-videos}
  s.authors           = ['Simplelógica']
  s.require_paths     = %w(lib)

  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files -- spec/*`.split("\n")

  # Runtime dependencies
  s.add_dependency    'refinerycms-core',     '~> 2.0.0'
  s.add_dependency    'acts_as_unvlogable',   '~> 1.0.0'
end
