class Jobs::ClientsController < ApplicationController
  def new
    @client = Client.new
    render layout: false
  end

  def create
    @client = Client.create!(create_params)
    # By default, this returns as content-type turbo-stream;
    # How can we avoid forcing the content type?
    render JobsClientSelectComponent.new(selected: @client), content_type: 'text/html'
  end

  private

  def create_params
    params.require(:client).permit(:name)
  end
end
