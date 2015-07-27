module FakeAws
  module S3

    class Resource

      def buckets
        {}
      end

      def bucket(name)
        NullBucket.new
      end

    end

    class NullBucket

      def exists?
        false
      end

    end

  end
end
