class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    settings = Setting.first
    @home = settings.homepage
    @sliders = @home.sliders
    render "/index"
  end
end
