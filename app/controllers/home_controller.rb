class HomeController < ApplicationController

  skip_before_action :authenticate_user!
  def index
    @restaurants = Restaurant.all.order(:name)
  end
end
