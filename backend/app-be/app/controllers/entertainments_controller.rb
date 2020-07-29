class EntertainmentsController < ApplicationController
  def index
    @entertainments = Entertainment.all 
    render json:@entertainments
  end
end
