class PortfoliosController < ApplicationController
  def index
    #Calling the model inside of the controller
	#available to the view
    @portfolio_items = Portfolio.all
  end

end
