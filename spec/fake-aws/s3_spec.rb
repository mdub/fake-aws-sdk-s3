require "spec_helper"
require "fake-aws/s3"

describe FakeAws::S3 do

  it "has a version number" do
    expect(FakeAws::S3::VERSION).not_to be nil
  end

end
