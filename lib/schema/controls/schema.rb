module Schema
  module Controls
    module Schema
      def self.example
        example = Example.new
        example.some_attribute = 'some value'
        example
      end

      def self.ancestors
        example.class.ancestors
      end

      def self.attributes
        example.attributes
      end

      def self.hash
        example.to_h
      end

      class Example
        include ::Schema
        attribute :some_attribute
      end
    end
  end
end
