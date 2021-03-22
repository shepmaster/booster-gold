class WorkflowTemplatesQuery
  attr_reader :form

  def initialize(form)
    @form = form
  end

  def results
    if @form.search.present?
      workflow_templates_arel = WorkflowTemplate.arel_table
      @workflow_templates = WorkflowTemplate.where(workflow_templates_arel[:name].matches("%#{@form.search}%"))
    else
      @workflow_templates = WorkflowTemplate.all
    end
  end
end
