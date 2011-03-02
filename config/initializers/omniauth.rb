Rails.application.config.middleware.use OmniAuth::Builder do
  require 'openid/store/filesystem'
#  use OmniAuth::Strategies::OpenID, OpenID::Store::Filesystem.new('/tmp')
  
  provider :twitter, '8qkik0sO9TO7b4bXu5Rg', 'QkYmsyLnNY0iytfBzvW6oWLXP0gKshXT4TNMxXQ0'
# mnapp1
# http://developers.facebook.com/setup/done?id=100797759989467&locale=en_US
  provider :facebook, '100797759989467', 'c0513b978d589be9ba62c82fe6836b90'
  provider :open_id    #, OpenID::Store::Filesystem.new('/tmp')
  provider :google_apps  #, OpenID::Store::Filesystem.new('/tmp')
#
#  provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end
