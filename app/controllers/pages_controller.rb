class PagesController < ApplicationController
  def home
    #raise
	@posts = Blog.all
  end

  def about
  end

  def contact
  end
end
