# frozen_string_literal: true

class CardAndLinkComponent < ViewComponent::Base
  def initialize(workflow_template:, hero: false)
    @workflow_template = workflow_template
    @hero = hero
  end

  def link
    @hero ?
      ( link_to ':icon: Open in new window', @workflow_template )
    :
      ( link_to ':just-icon:', @workflow_template )
  end

end
