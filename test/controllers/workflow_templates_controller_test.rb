require "test_helper"

class WorkflowTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workflow_template = workflow_templates(:one)
  end

  test "should get index" do
    get workflow_templates_url
    assert_response :success
  end

  test "should get new" do
    get new_workflow_template_url
    assert_response :success
  end

  test "should create workflow_template" do
    assert_difference('WorkflowTemplate.count') do
      post workflow_templates_url, params: { workflow_template: { description: @workflow_template.description, name: @workflow_template.name } }
    end

    assert_redirected_to workflow_template_url(WorkflowTemplate.last)
  end

  test "should show workflow_template" do
    get workflow_template_url(@workflow_template)
    assert_response :success
  end

  test "should get edit" do
    get edit_workflow_template_url(@workflow_template)
    assert_response :success
  end

  test "should update workflow_template" do
    patch workflow_template_url(@workflow_template), params: { workflow_template: { description: @workflow_template.description, name: @workflow_template.name } }
    assert_redirected_to workflow_template_url(@workflow_template)
  end

  test "should destroy workflow_template" do
    assert_difference('WorkflowTemplate.count', -1) do
      delete workflow_template_url(@workflow_template)
    end

    assert_redirected_to workflow_templates_url
  end
end
