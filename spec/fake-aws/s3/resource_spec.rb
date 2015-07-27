require "spec_helper"
require "fake-aws/s3/resource"

describe FakeAws::S3::Resource do

  let(:s3) { described_class.new }

  describe "#buckets" do

    let(:result) { s3.buckets }

    it "is Enumerable" do
      expect(result).to be_kind_of(Enumerable)
    end

    # it "returns a BucketCollection" do
    #   s3.buckets.should be_kind_of(FakeAWS::S3::BucketCollection)
    # end

  end


end
