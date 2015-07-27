require "spec_helper"
require "fake-aws/s3"

describe FakeAws::S3 do
  it "has a version number" do
    expect(FakeAws::S3::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
