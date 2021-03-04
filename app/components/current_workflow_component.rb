# frozen_string_literal: true

class CurrentWorkflowComponent < ViewComponent::Base
  def initialize(workflow_template:)
    @workflow_template = workflow_template
  end

  def render?
    @workflow_template.present?
  end
end
