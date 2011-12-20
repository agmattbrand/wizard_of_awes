require 'active_support/inflector'
require 'action_view'
require 'action_view/context'

module WizardOfAwes
  module ActionViewExtension
    # ==== Options
    # * <tt>:slug</tt> - Which snippet to look up.  Defaults to the current_page slug
    def woa_snippet(*slug)
      "Looking up Snippet for: #{slug.present? ? slug : request.fullpath}"
    end
  end
end