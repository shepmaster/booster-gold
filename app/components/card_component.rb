# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  def initialize(workflow_template:, type: CardComponent::NonHero)
    @workflow_template = workflow_template
    @type = type.respond_to?(:new) ? type.new : type
  end

  def background
    @type.background
  end

  # Note: this is jumping to the 3rd step of Classes (instead of a Hash)
  class Hero
    def background
      'bg-blue-900'
    end

    def link_text
      ':icon: Open in new window'
    end
  end

  class NonHero
    def background
      'bg-gray-100'
    end

    def link_text
      ':just-icon:'
    end
  end
end
