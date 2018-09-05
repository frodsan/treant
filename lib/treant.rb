# frozen_string_literal: true

class Treant
  def initialize(model, *unique_keys)
    @model = model
    @unique_keys = unique_keys
  end

  def seed
    attrs = OpenStruct.new

    yield(attrs)

    conditions = @unique_keys.each_with_object({}) { |k, h| h[k] = attrs[k] }

    record = @model.find_or_initialize_by(conditions)

    record.update!(attrs.to_h)

    record
  end
end
