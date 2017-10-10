class HomeController < ApplicationController
  def index
    @meli= Meli.new(5269860020378499,'277248279')
  end
end
