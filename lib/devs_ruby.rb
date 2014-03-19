module DEVSRuby
  # @see http://rubygems.org/gems/devs
  require 'devs'

  # @see http://rubygems.org/gems/devs-models
  require 'devs/models'

  # @see http://rubygems.org/gems/devs-examples
  require 'devs/examples'

  begin
    # @see http://rubygems.org/gems/devs-ext
    require 'devs/ext'
  rescue LoadError; end

  include DEVS

  # The major version number
  MAJOR = 0
  # The minor version number
  MINOR = 5
  # The patch version number
  PATCH = 0
  # The build version number
  BUILD = nil

  VERSION = [MAJOR, MINOR, PATCH, BUILD].compact.join('.').freeze
end
