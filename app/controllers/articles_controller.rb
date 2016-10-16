class ArticlesController < ApplicationController
    def new
    end
    
    def create
	@article = Atricle.new(params[:article]);
	
	@article.save
	redirect_to @article 
    end

end
