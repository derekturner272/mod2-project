class SciencesController < ApplicationController
  def index
    @sciences = Science.all 
    render json:@sciences
  end
end
