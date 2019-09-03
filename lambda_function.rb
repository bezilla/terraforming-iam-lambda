load_paths = Dir["./vendor/bundle/ruby/2.5.0/gems"]
$LOAD_PATH.unshift(*load_paths)

require 'bundler/setup'
require 'digest'
require 'terraforming'
require 'aws-sdk-s3'
require 'json'

ROLE_ARN = "arn:aws:iam::157385605725:role/lambda-terraform"
ROLE_SESSION_NAME = "lambda-session"
ROLE_CREDENTIALS = Aws::AssumeRoleCredentials.new(
    client: Aws::STS::Client.new,
    role_arn: "#{ROLE_ARN}",
    role_session_name: "#{ROLE_SESSION_NAME}"
  )

def lambda_handler(event:, context:)
  role_credentials = Aws::AssumeRoleCredentials.new(
    client: Aws::STS::Client.new,
    role_arn: "#{ROLE_ARN}",
    role_session_name: "#{ROLE_SESSION_NAME}"
  )
  Aws.config.update({
  region: 'us-east-1',
  credentials: "#{ROLE_CREDENTIALS}"
  })  
  generate_tf_files.each{|f|upload_tf_file_s3(f)}
  raise 'something went wrong' if $?.exitstatus != 0
  { statusCode: 200, body: JSON.generate('Hello from Lambda!') }
end

def generate_tf_files(profile_match: "iam")
  profile_params = `bundle exec terraforming help |awk '$2~/^#{profile_match}/ {print $2}'`.split("\n")
  profile_params.map do |param|
    tf_filename = "terraforming_#{param}.tf"
    `terraforming #{param} --assume #{ROLE_ARN} > /tmp/#{tf_filename}`
    raise 'Terraforming shit the bed' if $?.exitstatus != 0
    tf_filename
  end
end

def upload_tf_file_s3(file)
  role_credentials = Aws::AssumeRoleCredentials.new(
    client: Aws::STS::Client.new,
    role_arn: "#{ROLE_ARN}",
    role_session_name: "#{ROLE_SESSION_NAME}"
  )
  s3 = Aws::S3::Resource.new(region: 'us-east-1', credentials: "#{ROLE_CREDENTIALS}")
  obj = s3.bucket('plutolegacy-iam-backups').object(file)
  obj.upload_file(File.expand_path(file, "/tmp"))
  raise 'something went wrong' if $?.exitstatus != 0
end
