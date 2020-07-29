class GeneralsController < ApplicationController
  def index
    @generals = General.all 
    render json:@generals
  end
end
