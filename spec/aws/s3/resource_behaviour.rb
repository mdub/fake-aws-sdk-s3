require "rspec"

shared_examples_for "Aws::S3::Resource" do

  describe "#buckets" do

    let(:result) { s3.buckets }

    it "is Enumerable" do
      expect(result).to be_kind_of(Enumerable)
    end

    it "contains Buckets" do
      expect(result.first.class.name).to end_with("::Bucket")
    end

    it "lists existing buckets" do
      expect(result.map(&:name)).to include(existing_bucket_name)
    end

  end

  describe "#bucket" do

    context "with a existing bucket name" do

      let(:bucket) { s3.bucket(existing_bucket_name) }

      describe "#exists?" do
        it "is true" do
          expect(bucket).to exist
        end
      end

      describe "#name" do
        it "returns the name" do
          expect(bucket.name).to eql(existing_bucket_name)
        end
      end

    end

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
