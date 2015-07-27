require "spec_helper"
require "fake-aws/s3/resource"

require_relative "resource_behaviour.rb"

describe FakeAws::S3::Resource do

  let(:s3) { described_class.new }

  it_behaves_like "Aws::S3::Resource"

end
