class NavPageController < ApplicationController
  # GET /nav_pages
  def index
    render layout: "application_with_nav"
  end
end
