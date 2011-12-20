class WizardOfAwes
  class Configuration

    attr_accessor :snippet_route_prefix, :current_user_method, :authentication_method

    def initialize
      @snippet_route_prefix = 'woa-snippets'
      @current_user_method = :current_helper_user
      @authentication_method = :authenticate_helper_user!
    end

  end

  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end