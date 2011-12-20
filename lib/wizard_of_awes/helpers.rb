require 'active_support/inflector'
require 'action_view'
require 'action_view/context'

module WizardOfAwes
  module ActionViewExtension
    # ==== Options
    # * <tt>:slug</tt> - Which snippet to look up.  Defaults to the current_page slug
    def woa_snippet(*slug)
      s = slug.present? slug : request.fullpath
      snippet = HelperSnippet.find_by_slug(s)
      if snippet
        markdown(snippet.body)
      else
        "No Snippet Found"
      end
    end
  end
end