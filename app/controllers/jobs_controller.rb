class JobsController < ApplicationController
  def new
    clients = Client.all
    @clients_for_select = clients.map {|c| [c.name, c.id]}
    @clients_for_select.push(['Add new...', -1])
    @job = Job.new
    @client = Client.new
  end

  def create
    Job.create!(create_params)
  end

  private

  def create_params
    params.require(:job).permit(:name, :client_id)
  end
end
