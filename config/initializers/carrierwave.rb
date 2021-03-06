CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV["AWS_ACCESS_KEY_ID"], # THING 1
    :aws_secret_access_key  => ENV["AWS_SECRET_ACCESS_KEY"], # THING 2
    :region                 => 'us-east-1'
  }
  config.fog_directory  = ENV["AWS_BUCKET"] # THING 3
  config.fog_public     = true
  config.fog_attributes = {'Cache-Control' => 'max-age=315576000'}
end
