class HousesController < ApplicationController
  before_action :set_house, only: %i[show update destroy]
  include CurrentUserConcern

  # GET /houses
  def index
    @houses = House.all
    json_response(@houses)
  end

  def myhouses
    @houses = @current_user.houses.all
    json_response(@houses)
  end

  # POST /houses
  def create
    @house = @current_user.houses.create!(house_params)
    json_response(@house, :created)
  end

  # GET /houses/:id
  def show
    json_response(@house)
  end

  # PUT /houses/:id
  def update
    @house.update(house_params)
    head :no_content
  end

  # DELETE /houses/:id
  def destroy
    @house.destroy
    head :no_content
  end

  private

  def house_params
    params.permit(:title, :about, :price, :category)
  end

  def set_house
    @house = House.find(params[:id])
  end
end
