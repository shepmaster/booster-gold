# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  def initialize(workflow_template:, hero: false)
    @workflow_template = workflow_template
    @type = hero ? Hero.new : NonHero.new
  end

  def background
    # Originally - just did as a bool with ternary: @hero ? 'bg-blue-900' : 'bg-gray-100'
    @type.background
  end

  # Note: this is jumping to the 3rd step of Classes (instead of a Hash)
  class Hero
    def background
      'bg-blue-900'
    end
  end

  class NonHero
    def background
      'bg-gray-100'
    end
  end
end
