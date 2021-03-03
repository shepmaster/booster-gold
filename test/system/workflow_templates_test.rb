require "application_system_test_case"

class WorkflowTemplatesTest < ApplicationSystemTestCase
  setup do
    @workflow_template = workflow_templates(:one)
  end

  test "visiting the index" do
    visit workflow_templates_url
    assert_selector "h1", text: "Workflow Templates"
  end

  test "creating a Workflow template" do
    visit workflow_templates_url
    click_on "New Workflow Template"

    fill_in "Description", with: @workflow_template.description
    fill_in "Name", with: @workflow_template.name
    click_on "Create Workflow template"

    assert_text "Workflow template was successfully created"
    click_on "Back"
  end

  test "updating a Workflow template" do
    visit workflow_templates_url
    click_on "Edit", match: :first

    fill_in "Description", with: @workflow_template.description
    fill_in "Name", with: @workflow_template.name
    click_on "Update Workflow template"

    assert_text "Workflow template was successfully updated"
    click_on "Back"
  end

  test "destroying a Workflow template" do
    visit workflow_templates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Workflow template was successfully destroyed"
  end
end
