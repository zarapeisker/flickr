CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV['aws_access_key_id'],                        # required
    :aws_secret_access_key  => ENV['aws_secret_access_key'],                        # required
    # :region                 => 'us-west-2'                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'zara-flickr'                     # required
  config.fog_public     = true                                   # optional, defaults to true

  if Rails.env.test?
    config.storage = :file
  else
    config.storage = :fog
  end
end