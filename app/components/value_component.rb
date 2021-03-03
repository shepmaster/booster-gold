# frozen_string_literal: true

class ValueComponent < ViewComponent::Base
  def initialize(value:)
    @value = value
  end

end
