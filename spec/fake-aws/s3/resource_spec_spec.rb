require "spec_helper"
require "aws-sdk-resources"

require_relative "resource_behaviour.rb"

if ENV.key?("AWS_ACCESS_KEY_ID")
  describe Aws::S3::Resource, :integration => true do

    let(:s3) { described_class.new }

    it_behaves_like "Aws::S3::Resource"

  end
end
