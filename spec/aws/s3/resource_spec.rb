require "spec_helper"
require "aws-sdk-resources"

require_relative "resource_behaviour"

if ENV.key?("FAKE_AWS_SDK_TEST_BUCKET")

  describe Aws::S3::Resource, :integration => true do

    let(:s3) { described_class.new }

    let(:existing_bucket_name) { ENV.fetch("FAKE_AWS_SDK_TEST_BUCKET") }

    it_behaves_like "Aws::S3::Resource"

  end
end
