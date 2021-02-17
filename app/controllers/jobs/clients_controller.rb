class Jobs::ClientsController < ApplicationController
  def new
    @client = Client.new

    render layout: false
  end

  def create
    @client = Client.create!(create_params)

    # duplicated in jobs_controller
    clients = Client.all
    @clients_for_select = clients.map {|c| [c.name, c.id]}
    @clients_for_select.push(['Add new...', -1])
    #

    render partial: 'jobs/select', locals: { selected: @client.id }
  end

  private

  def create_params
    params.require(:client).permit(:name)
  end
end
