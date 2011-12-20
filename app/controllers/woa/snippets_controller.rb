class Woa::SnippetsController < ApplicationController
  protect_from_forgery
  layout 'woa/layouts/wizard_of_awes'
  include WizardOfAwes.config.helper_auth.to_s.constantize
  before_filter :authorize_local
  
  def index
    @snippets = HelperSnippet.all
  end
  
  def new
    @snippet = HelperSnippet.new
  end
  
  def create
    @snippet = HelperSnippet.new(params[:helper_snippet])

    respond_to do |format|
      if @snippet.save
        format.html { redirect_to(woa_snippets_url, :notice => 'Snippet was successfully created.') }
        format.xml  { render :xml => @snippet, :status => :created }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @snippet.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def edit
    @snippet = HelperSnippet.find(params[:id])
  end
  
  def update
    @snippet = HelperSnippet.find(params[:id])

    respond_to do |format|
      if @snippet.update_attributes(params[:helper_snippet])
        format.html { redirect_to(woa_snippets_url, :notice => 'Snippet was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @snippet.errors, :status => :unprocessable_entity }
      end
    end
  end 

  def destroy
    @snippet = Division.find(params[:id])
    @snippet.destroy

    respond_to do |format|
      format.html { redirect_to(woa_snippets_url) }
      format.xml  { head :ok }
    end
  end
  
  private
  def authorize_local
    if WizardOfAwes.config.helper_auth.blank?
      redirect_to(root_path, :notice => 'You are not authorized to be here')
    else
      :authorize
    end
  end
  
end

  