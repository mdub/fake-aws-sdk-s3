require "rspec"

shared_examples_for "Aws::S3::Resource" do

  describe "#buckets" do

    let(:result) { s3.buckets }

    it "is Enumerable" do
      expect(result).to be_kind_of(Enumerable)
    end

    # it "returns a BucketCollection" do
    #   s3.buckets.should be_kind_of(FakeAWS::S3::BucketCollection)
    # end

  end

  describe "#bucket" do

    context "with a non-existant bucket name" do

      let(:bucket) { s3.bucket("foobar-flibble-crazy-lady") }

      describe "#exists?" do
        it "is false" do
          expect(bucket).not_to exist
        end
      end

    end

  end

end
