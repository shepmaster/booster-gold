# frozen_string_literal: true

class LinkComponent < ViewComponent::Base
  def initialize(text:, path:, options: {})
    @text = text
    @path = path
    @options = options
  end
end
