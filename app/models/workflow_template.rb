class WorkflowTemplate < ApplicationRecord
  # after_create_commit -> { broadcast_replace_to :everyone }
  # NOTE: replace_to will have a target like `workflow-template-49`.. we want to override.
  # NOTE: Also kinda weird that `broadcasts_to` needs a symbol, and this can use the direct method
  after_create_commit -> { broadcast_replace_to everyone, target: "workflow_templates" }
  # broadcasts_to :everyone

  def everyone
    ::EVERYONE
  end
end
