class NotificationsController < ApplicationController
  before_action :set_notification, only: %i[ show edit update destroy ]

  def index
    @notification = Notification.find_or_create_by(id: 1) {|n| n.attributes = {count: 15, name: 'Pat'}}
  end

  def update
    if params[:direction] == '+'
      @notification.count += 1
    elsif params[:direction] == '-'
      @notification.count -= 1
    else
      @notification.count = params[:count]
    end
    @notification.save!

    respond_to do |format|
      format.html { render :index }
      format.json { render json: @notification }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_notification
    @notification = Notification.find(params[:id])
  end
end
