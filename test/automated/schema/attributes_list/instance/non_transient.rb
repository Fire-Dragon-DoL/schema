require_relative '../../../automated_init'

context "Attributes List" do
  context "Instance" do
    context "Non-Transient" do
      example = Schema::Controls::Schema.example
      attributes = example.attributes

      test "Non-transient attributes are included in the hash" do
        assert(attributes == { some_attribute: 'some value', some_other_attribute: 'some other value' })
      end

      test "Hash of object is the same as its attributes" do
        assert(example.to_h == attributes)
      end
    end
  end
end
