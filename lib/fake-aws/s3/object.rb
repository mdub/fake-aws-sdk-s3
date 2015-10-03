module FakeAws
  module S3

    class Object

      def initialize(key)
        @key = key
      end

      attr_reader :key

    end

  end
end
