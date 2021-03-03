# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  def initialize(workflow_template:)
    @workflow_template = workflow_template
  end

end
