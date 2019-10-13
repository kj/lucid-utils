# frozen_string_literal: true

$LOAD_PATH.unshift "#{__dir__}/lib"

require 'lucid/utils/version'

Gem::Specification.new do |s|
  s.author = 'Kelsey Judson'
  s.email = 'kelsey@lucid.nz'
  s.files = Dir.glob('lib/**/*') + %w[README.md]
  s.homepage = 'https://github.com/lucidnz/gem-lucid-utils'
  s.license = 'ISC'
  s.name = 'lucid-utils'
  s.summary = 'Common helpers for Lucid gems'
  s.version = Lucid::Utils::VERSION
end
