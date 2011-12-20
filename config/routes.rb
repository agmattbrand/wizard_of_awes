Rails.application.routes.draw do
  namespace :woa, :path => WizardOfAwes.config.snippet_route_prefix do
    resources :snippets, :except => :show
  end unless WizardOfAwes.config.snippet_route_prefix.blank?
end