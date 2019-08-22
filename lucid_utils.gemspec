# frozen_string_literal: true

$LOAD_PATH.unshift "#{__dir__}/lib"

require 'lucid_utils/version'

Gem::Specification.new do |s|
  s.author = 'Kelsey Judson'
  s.email = 'kelsey@lucid.nz'
  s.files = Dir.glob('lib/**/*') + %w[README.md]
  s.homepage = 'https://github.com/lucidnz/gem-lucid_utils'
  s.license = 'ISC'
  s.name = 'lucid_utils'
  s.summary = 'Common helpers for Lucid gems'
  s.version = LucidUtils::VERSION
end
