class ArticlesController < ApplicationController

  def index
    @category = Category.find(params[:id])
    @articles = @category.articles
  end

  def new
    @category = Category.find(params[:cat_id])
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @category = Category.find(params[:cat_id])
    @article = @category.articles.create!(article_params)

    redirect_to articles_path(@category)
  end

  private

    def article_params
      params.require(:article).permit(:title, :body, :price)
    end

end
