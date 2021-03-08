class CardComponentPreview < ViewComponent::Preview
  def default
    render(CardComponent.new(workflow_template: ExampleWorkflowTemplate.new))
  end

  class ExampleWorkflowTemplate
    def id
      1
    end

    def name
      'Workflow template'
    end

    def description
      'Very best there is'
    end
  end
end
