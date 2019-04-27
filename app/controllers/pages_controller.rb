class PagesController < ApplicationController
  def home
    #raise
	@posts = Blog.all
	@skills= Skill.all
  end

  def about
  end

  def contact
  end
end
