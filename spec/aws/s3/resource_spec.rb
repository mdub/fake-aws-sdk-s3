require "spec_helper"
require "aws-sdk-resources"

require_relative "resource_behaviour"

if $test_bucket_name
  describe Aws::S3::Resource, :integration => true do

    let(:s3) { described_class.new }

    let(:existing_bucket_name) { $test_bucket_name }

    it_behaves_like "Aws::S3::Resource"

  end
end
