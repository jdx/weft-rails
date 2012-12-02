class HomeController < ApplicationController
  def index
    @user = current_user || User.new
  end

  def preview
    @location = DeviceLocation.last
  end
end
