OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do

  if Rails.env.production?
    provider :facebook, '1435382630011419', 'e595c8b373d73eb8ba5e8fd87184868b',
    :scope => 'email,read_stream,user_location', :display => 'popup'
  
  elsif Rails.env.development?
    provider :facebook, '767413636617526', '0af2b39f3ae67976d2eb5bda5102eae1',
      :scope => 'email, read_stream, user_location', :display => 'popup'
  else
    # test env
    # set the app parameter
    provider :facebook, '767413636617526', '0af2b39f3ae67976d2eb5bda5102eae1',
    :scope => 'email,read_stream,user_location', :display => 'popup'
  end


end
