OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do

provider :facebook, ENV['FACEBOOK_ID'], ENV['FACEBOOK_SECRET'], {:scope => 'email', :display => 'popup'}

end
