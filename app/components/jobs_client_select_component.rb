# frozen_string_literal: true

class JobsClientSelectComponent < ViewComponent::Base
  def initialize(selected: nil)
    clients = Client.all
    @clients_for_select = clients.map {|c| [c.name, c.id]}
    @clients_for_select.push(['Add new...', -1])
    @selected = selected&.id
  end
end
