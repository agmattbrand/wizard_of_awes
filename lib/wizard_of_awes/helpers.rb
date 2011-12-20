require 'active_support/inflector'
require 'action_view'
require 'action_view/context'

module WizardOfAwes
  module ActionViewExtension
    # ==== Options
    # * <tt>:slug</tt> - Which snippet to look up.  Defaults to the current_page slug
    def woa_snippet(scope, options = {})
      "Wizard Of Awes: Coming Soon"
    end
  end
end