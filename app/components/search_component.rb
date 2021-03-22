# frozen_string_literal: true

class SearchComponent < ViewComponent::Base
  def initialize(workflow_templates_filter_form:)
    @workflow_templates_filter_form = workflow_templates_filter_form
  end
end
