class HealthsController < ApplicationController
  def index
    @healths = Health.all 
    render json:@healths
  end
end
