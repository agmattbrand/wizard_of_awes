# Dictionary to define what is available for reporting
Rails.application.config.DICTIONARY = {
  ##
  # Each item in the top-level hash has a collection of hashes inside.  Each of these sub-hashes defines which columns
  # will be available and how they should be rendered in the wizard.
  # 
  # If there is no :restriction_label specified, there will be no UI filter for this particular column although it's data
  # will be returned as part of the result set.
  #
  # Step 1 of the wizard will show the top-level keys and allow the user to select what data they want.
  # Step 2 of the wizard will show the collection of columns for each of the previously selected models.
  # Step 3 of the wizard will show the optional restriction choices for each of the previously selected columns.
  # Step 4 of the wizard will use these same columns to determine the 'order by' clause
  ##

  # "model1" => {
  #   :statuses => { :restriction_label => "Has The Status", :type => :check_boxes, :collection => "current_user.get_working_organization.statuses" },
  #   :email => { :restriction_label => "Email Address", :type => :string },
  #   :firstname => { :restriction_label => "First Name", :type => :string },
  #   :lastname => { :restriction_label => "Last Name", :type => :string },
  #   :gender => { :restriction_label => "Is Gender", :type => :check_boxes, :collection => ["Female","Male"] },
  #   :created_at => { :restriction_label => "Created At", :type => :date },
  #   :updated_at => { :restriction_label => "Last Updated At", :type => :date }
  # },
  # "model2" => {
  #   :name => {},
  #   :description => {},
  #   :created_at => {},
  #   :updated_at => {}
  # }
}