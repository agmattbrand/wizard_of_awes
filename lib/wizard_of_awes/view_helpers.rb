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
      options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code]
      output_text = snippet.body
      raw output_text
      # Redcarpet.new(text, *options).to_html.html_safe  
    end
  end
end
