class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    settings = Setting.first
    @home = settings.homepage
    @sliders = @home.sliders
    @promos = @home.promos.where.not(id: 1)
    @first_promo = @home.promos.first

    @options = ["sliders", "promos", "featured_products", "banners", "testimonials", "newsletter"]
    render "/index"
  end
end
