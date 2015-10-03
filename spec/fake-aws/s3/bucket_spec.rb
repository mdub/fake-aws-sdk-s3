require "spec_helper"
require "fake-aws/s3/resource"

require_relative "../../aws/s3/bucket_behaviour"

describe FakeAws::S3::Bucket do

  let(:s3) { FakeAws::S3::Resource.new }
  let(:existing_bucket_name) { "bucket-o-fish" }

  before do
    s3.create_bucket(:bucket => existing_bucket_name)
  end

  it_behaves_like "Aws::S3::Bucket"

end
