class HomeController < ApplicationController
  def index
  end

  def preview
    @location = DeviceLocation.last
  end
end
