class Woa::SnippetsController < ApplicationController
  protect_from_forgery
  layout 'woa/layouts/wizard_of_awes'
  before_filter :check_for_auth
  
  def index
    @snippets = HelperSnippet.all
  end
  
  def new
    @snippet = HelperSnippet.new
  end
  
  def create
    @snippet = HelperSnippet.new(params[:snippet])

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
      if @snippet.update_attributes(params[:snippet])
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
  def check_for_auth
    
  end
  
end

  