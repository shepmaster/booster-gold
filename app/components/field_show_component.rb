# frozen_string_literal: true

class FieldShowComponent < ViewComponent::Base
  def initialize(label:)
    @label = label
  end
end
