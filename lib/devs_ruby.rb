require 'devs_ruby/version'

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
end
