require "spec_helper"
require "aws-sdk-resources"

require_relative "bucket_behaviour"

if $test_bucket_name
  describe Aws::S3::Bucket, :integration => true do

    let(:s3) { Aws::S3::Resource.new }

    let(:existing_bucket_name) { $test_bucket_name }

    it_behaves_like "Aws::S3::Bucket"

  end
end
