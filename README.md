# FakeAws::S3

[![Build Status](https://travis-ci.org/realestate-com-au/fake-aws-sdk-s3.svg?branch=master)](https://travis-ci.org/realestate-com-au/fake-aws-sdk-s3)

This gem provides a fake implementation of `Aws::S3::Resource`, from [`aws-sdk-ruby`](https://github.com/aws/aws-sdk-ruby)

## Usage

Substitute `FakeAws::S3::Resource` for `Aws::S3::Resource`.

```
require 'fake-aws/s3'

s3 = FakeAws::S3::Resource.new

s3.bucket("test-bucket").create
s3.bucket("test-bucket").object("foo").put("bar")
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
