module ApplicationHelper
  def woa_markdown(text)
    options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code]
    Redcarpet.new(text, *options).to_html.html_safe  
  end

  # ==== Options
  # * <tt>:slug</tt> - Which snippet to look up.  Defaults to the current_page slug
  def woa_snippet(*slug)
    s = slug.present? ? slug : request.fullpath
    snippet = HelperSnippet.find_by_slug(s)
    if snippet
      woa_markdown(snippet.body)
    else
      "No Snippet Found"
    end
  end

end