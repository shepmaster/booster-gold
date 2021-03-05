# frozen_string_literal: true

class DropdownComponent < ViewComponent::Base
  def initialize(items:)
    @items = items
  end
end
