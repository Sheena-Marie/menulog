class RestaurantTypesController < ApplicationController
  before_action :set_restaurant_type, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_types
  # GET /restaurant_types.json
  def index
    @restaurant_types = RestaurantType.all
  end

  # GET /restaurant_types/1
  # GET /restaurant_types/1.json
  def show
  end

  # GET /restaurant_types/new
  def new
    @restaurant_type = RestaurantType.new
  end

  # GET /restaurant_types/1/edit
  def edit
  end

  # POST /restaurant_types
  # POST /restaurant_types.json
  def create
    @restaurant_type = RestaurantType.new(restaurant_type_params)

    respond_to do |format|
      if @restaurant_type.save
        format.html { redirect_to @restaurant_type, notice: 'Restaurant type was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_type }
      else
        format.html { render :new }
        format.json { render json: @restaurant_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_types/1
  # PATCH/PUT /restaurant_types/1.json
  def update
    respond_to do |format|
      if @restaurant_type.update(restaurant_type_params)
        format.html { redirect_to @restaurant_type, notice: 'Restaurant type was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant_type }
      else
        format.html { render :edit }
        format.json { render json: @restaurant_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_types/1
  # DELETE /restaurant_types/1.json
  def destroy
    @restaurant_type.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_types_url, notice: 'Restaurant type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_type
      @restaurant_type = RestaurantType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_type_params
      params.require(:restaurant_type).permit(:name)
    end
end
