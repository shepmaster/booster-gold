# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  def initialize(workflow_template:, type: 'nonhero')
    @workflow_template = workflow_template
    @type = type
  end

  def background
    background_color[@type]
  end

  private

  def background_color
    {
      hero: 'bg-blue-900',
      nonhero: 'bg-gray-100',
    }.with_indifferent_access
  end
end
