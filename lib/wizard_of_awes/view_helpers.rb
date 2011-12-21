module WizardOfAwes
  module ViewHelpers
    include WizardOfAwes.config.helper_auth.to_s.constantize
    # ==== Options
    # * <tt>:slug</tt> - Which snippet to look up.  Defaults to the current_page slug
    def woa_snippet(*slug)
      s = slug.present? ? slug : request.fullpath
      snippet = HelperSnippet.find_by_slug(s)
      options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code]
      if snippet
        woa_markdown(snippet) 
      else
        "No Snippet Found"
      end
    end

    def woa_markdown(snippet)
      options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code]
      output_text = snippet.body
      if is_helper_user?
        output_text += "<p/>" + link_to("Edit Snippet",edit_woa_snippet_path(snippet.id))
      end
      raw output_text
      # Redcarpet.new(text, *options).to_html.html_safe  
    end
  end
end
