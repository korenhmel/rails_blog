class ArticlesController < ApplicationController
  def new
  end
  def show
    @article = Article.find(params[:id])
  end
  def create
    @article = Article.new(contact_params)
    if @article.valid?
      @article.save
      redirect_to @article
    else
      render action: 'new'
    end

  end
  def index
    @articles_list = Article.all
  end
  private
  def contact_params
    params.require(:article).permit(:title, :text)
  end
end
