OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1435382630011419', 'e595c8b373d73eb8ba5e8fd87184868b'
end