# typed: strict
class ApplicationController < ActionController::Base
  before_action :set_stream

  def set_stream
    @stream ||= WorkflowTemplate.first
  end
end
