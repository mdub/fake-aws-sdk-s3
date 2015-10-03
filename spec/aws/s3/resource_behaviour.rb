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

    it "returns the named bucket" do
      result = s3.bucket("foobar")
      expect(result.class.name).to end_with("::Bucket")
      expect(result.name).to eql("foobar")
    end

  end

end
