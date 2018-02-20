class ArticlesController < ApplicationController
  def index
    @articles = Article.all         # GET /restaurants
  end

  def show          # GET /restaurants/:id
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new          # GET /restaurants/new
  end

  def create
    @article = Article.new(article_params)
    @article.save        # POST /restaurants
  end

  def edit
    @article = Article.find(params[:id])          # GET /restaurants/:id/edit
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)        # PATCH /restaurants/:id
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
