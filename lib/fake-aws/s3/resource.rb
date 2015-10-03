require "fake-aws/s3/bucket"

module FakeAws
  module S3

    class Resource

      def initialize
        @storage = {}
      end

      def buckets
        @storage.keys.map { |name| bucket(name) }
      end

      def bucket(name)
        Bucket.new(storage, name)
      end

      def create_bucket(options)
        unless options.key?(:bucket)
          raise ArgumentError, "missing required parameter"
        end
        name = options.fetch(:bucket)
        bucket(name).tap do |b|
          b.create
        end
      end

      private

      attr_reader :storage

    end

  end
end
