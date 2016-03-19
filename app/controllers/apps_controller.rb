class AppsController < ApplicationController

  def index
    @apps = App.all
  end

  def new
    @app = App.new
  end

  def create
    @app = App.create(app_params)
    redirect_to root_url
  end


  private

  def app_params
    params.require(:app).permit(:name, :description, :picture)
  end

end
