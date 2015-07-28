module FakeAws
  module S3

    class Resource

      def initialize
        @storage = {}
      end

      def buckets
        {}
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

    class Bucket

      def initialize(storage, name)
        @storage = storage
        @name = name
      end

      attr_reader :name

      def exists?
        @storage.key?(name)
      end

      def create
        raise "hell" if exists?
        @storage[name] = {}
      end
      
      private

      attr_reader :storage

    end

  end
end
