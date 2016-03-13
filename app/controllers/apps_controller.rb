class AppsController < ApplicationController

  def index
    @apps = App.all
  end

  def new
    @app = App.new(app_params)
  end


  private

  def app_params
    params.require(:app).permit(:name, :description, :picture)
  end

end
