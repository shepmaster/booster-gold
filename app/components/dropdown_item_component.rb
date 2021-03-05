# frozen_string_literal: true

class DropdownItemComponent < ViewComponent::Base
  def initialize(item:)
    @item = item
  end
end
