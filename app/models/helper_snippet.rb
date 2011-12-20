class HelperSnippet < ActiveRecord::Base
  validates_presence_of :slug, :message => "Please specify the slug (key) for this snippet"
  validates_presence_of :body, :message => "Please specify the content for this snippet"
end