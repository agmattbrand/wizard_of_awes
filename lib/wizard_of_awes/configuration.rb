require 'active_support/configurable'

module WizardOfAwes
  def self.configure(&block)
    yield @config ||= WizardOfAwes::Configuration.new
  end
  
  def self.config
    @config
  end
  
  class Configuration #:nodoc:
    include ActiveSupport::Configurable
    config_accessor :snippet_route_prefix
    config_accessor :is_helper_user

    def param_name
      config.param_name.respond_to?(:call) ? config.param_name.call : config.param_name
    end
  end  

  configure do |config|
    config.snippet_route_prefix = 'woa-snippets'
    config.is_helper_user = ''
  end
end