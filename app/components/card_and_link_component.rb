# frozen_string_literal: true

class CardAndLinkComponent < ViewComponent::Base
  def initialize(workflow_template:, type: 'nonhero')
    @workflow_template = workflow_template
    @type = type
  end

  def link
    link_to link_text[@type], @workflow_template
  end

  private

  def link_text
    {
      hero: ':icon: Open in new window',
      nonhero: ':just-icon:',
    }.with_indifferent_access
  end
end
