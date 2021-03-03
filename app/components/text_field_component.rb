# frozen_string_literal: true

class TextFieldComponent < ViewComponent::Base
  def initialize(form:, attribute:)
    @form = form
    @attribute = attribute
  end

end
