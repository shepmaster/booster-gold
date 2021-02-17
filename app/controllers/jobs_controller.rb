class JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def create
    Job.create!(create_params)
  end

  private

  def create_params
    params.require(:job).permit(:name, :client_id)
  end
end
