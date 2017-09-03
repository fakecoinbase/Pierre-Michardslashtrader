class HomeController < ApplicationController
  def index
    @robot = RobotService.new
    @trades = Trade.limit(100).reverse_order
    @stat = Stat.new
  end
end