class ArticlesController < ApplicationController

   def index
        @articles = Article.all
   end

   def show
        @article = Article.find(params[:id])
   end

  def truncate
  @article = @atricle.id > 2 ? "#{string[0...max]}..." : string
  end

  def new
  end

  def create
      @article = Article.new(article_params)
      @article.save
      redirect_to @article
  end



  def article_params
        params.require(:article).permit(:title, :text, :URL)
  end

 end
