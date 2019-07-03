class PortfoliosController < ApplicationController
  def index
    #Calling the model inside of the controller
	#available to the view
    @portfolio_items = Portfolio.all
  end

  def angular
    @angular_portfolio_items = Portfolio.angular    
  end

  def new
    @portfolio_item = Portfolio.new
	3.times { @portfolio_item.technologies.build }
  end
   

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

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
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }

      end
    end
  end  
  
  def show
    @portfolio_item = Portfolio.find(params[:id])
  end
  
  def destroy
    #Perform the lookup
    @portfolio_item = Portfolio.find(params[:id])
	
	# Destroy/delete the record
	@portfolio_item.destroy
	
	# Redirect
	respond_to do |format|
	  format.html { redirect_to portfolios_url, notice: 'Record was removed.' }
	end
	
  end
  
  private
  
  def portfolio_params
    params.require(:portfolio).permit(:title,
									  :subtitle,
									  :body,
									  technologies_attributes: [:name]
									  )
  end
end
