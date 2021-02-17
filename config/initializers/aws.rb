
S3Client = Aws::S3::Client.new(
  access_key_id: 'S3_KEY',
  secret_access_key: 'S3_SECRET',
  region: 'us-east-2'
) 

S3_BUCKET = Aws::S3::Resource.new.bucket(ENV['S3_BUCKET'])