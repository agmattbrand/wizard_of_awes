module WizardOfAwes
  module ViewHelpers
    # ==== Options
    # * <tt>:slug</tt> - Which snippet to look up.  Defaults to the current_page slug
    def woa_snippet(*slug)
      s = slug.present? ? slug : request.fullpath
      snippet = HelperSnippet.find_by_slug(s)
      if snippet
        woa_markdown(snippet) 
      else
        "No Snippet Found"
      end
    end

    def woa_markdown(snippet)
      snippet.body
    end
  end
end
