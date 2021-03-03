# frozen_string_literal: true

class TextAreaFieldComponent < ViewComponent::Base
  def initialize(form:, attribute:)
    @form = form
    @attribute = attribute
  end

end
