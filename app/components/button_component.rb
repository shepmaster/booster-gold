# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  def initialize(text:, data:)
    @text = text
    @data = data
  end
end
