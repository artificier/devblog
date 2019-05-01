class PortfoliosController < ApplicationController
  def index
    #Calling the model inside of the controller
	#available to the view
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end
   

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
	    #format.htmlでブラウザで利用できるようにする。
        format.html { redirect_to portfolios_path, notice: 'Your Portfolio is now live.' }
        #上と同じ内容→format.html { redirect_to blog_path(@blog), notice: 'Blog was successfully created.' }
        #format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        #format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

#エディットメソッドを作成する
  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end
  
  def update
    @portfolio_item = Portfolio.find(params[:id])
	
    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }

      end
    end
  end  
end
