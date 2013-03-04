class SeatsController < ApplicationController
  respond_to :json

  def index
  	@seats = Seat.all
  end

  def change_places
  	Seat.change_places!
  	#render :nothing => true
  	redirect_to seats_path
  end
end
