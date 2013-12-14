class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.full_name = auth.info.name
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.image = auth.info.image
      user.gender = auth.extra.raw_info.gender
      user.link = auth.extra.raw_info.link
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
      gb = Gibbon::API.new('7bad2873c41bfeed2adb6c88e4c54f96-us3')
      list_id = 'aa300ad26a'
      gb.lists.subscribe({:id => list_id, :email => {:email => user.email}, :merge_vars => {:FNAME => user.first_name, :LNAME => user.last_name, :GENDER => user.gender, :PROVIDER => user.provider}, :double_optin => false, :update_existing => true})
    end
  end
end

