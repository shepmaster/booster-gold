# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  HERO = 'hero'
  NONHERO = 'nonhero'

  def initialize(workflow_template:, type: NONHERO)
    @workflow_template = workflow_template
    @type = type
  end

  def background
    background_color[@type]
  end

  private

  def background_color
    {
      HERO => 'bg-blue-900',
      NONHERO => 'bg-gray-100',
    }.with_indifferent_access
  end
end
