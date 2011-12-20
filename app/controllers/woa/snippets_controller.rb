class Woa::SnippetsController < ApplicationController
  protect_from_forgery
  layout 'woa/layouts/wizard_of_awes'
  before_filter :check_for_auth
  
  def index
    @snippets = HelperSnippet.all
  end
  
  def new
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end 

  def destroy
  end
  
  private
  def check_for_auth
    
  end
  
end

  