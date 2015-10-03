require "rspec"

shared_examples_for "Aws::S3::Bucket" do

  context "existing" do

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

    describe "#object" do

      it "returns the named object" do
        result = bucket.object("foobar")
        expect(result.class.name).to end_with("::Object")
        expect(result.key).to eql("foobar")
      end

    end

  end

  context "non-existant" do

    let(:bucket) { s3.bucket("foobar-flibble-crazy-lady") }

    describe "#exists?" do
      it "is false" do
        expect(bucket).not_to exist
      end
    end

  end

end
