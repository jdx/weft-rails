class DevicesController < ApplicationController
  skip_before_filter :protect_from_forgery, :verify_authenticity_token
  respond_to :json, :xml

  def show
    @location = DeviceLocation.last
    render :show, content_type: 'application/json'
  end

  def create
    @location = DeviceLocation.create!(lat: params[:lat], lon: params[:lon], elevation: params[:elevation])
    render :show, content_type: 'application/json'
  end

end
