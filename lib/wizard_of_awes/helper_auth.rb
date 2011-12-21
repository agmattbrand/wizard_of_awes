module WizardOfAwes::HelperAuth
  # Simple auth. When implementing some other form of authorization
  # this method should return +true+ if everything is great, or redirect user
  # to some other page, thus denying access to cms admin section.
  def woa_authorize
    # If things are good...
    # true
    
    # If things are not good
    redirect_to(root_path)
  end
end