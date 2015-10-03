require "spec_helper"
require "fake-aws/s3/resource"

require_relative "../../aws/s3/resource_behaviour"

describe FakeAws::S3::Resource do

  let(:s3) { described_class.new }
  let(:existing_bucket_name) { "bucket-o-fish" }

  before do
    s3.create_bucket(:bucket => existing_bucket_name)
  end

  it_behaves_like "Aws::S3::Resource"

end
