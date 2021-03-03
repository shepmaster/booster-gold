# frozen_string_literal: true

class CardAndLinkComponent < ViewComponent::Base
  def initialize(workflow_template:, type: CardComponent::NonHero)
    @workflow_template = workflow_template
    @type = type.respond_to?(:new) ? type.new : type
  end

  def link
    link_to @type.link_text, @workflow_template
  end
end
