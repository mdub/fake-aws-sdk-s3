module FakeAws
  module S3

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
