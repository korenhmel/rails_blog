class ArticlesController < ApplicationController
  def new
  end
  def show
    @article = Article.find(params[:id])
  end
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      # 'возвращает  созданный ресурс в странице show.html.erb'
      # 'отличие между redirect_to и render в том что редирект возвращает страницу после
      # какого то выполненного действия, тоесть данные были сохранены в базе данных и
      # информация  в переменной  @article  уже не нужна, render же напротив не сбрасывает
      # данные с переменной.'
      redirect_to @article
    else
      render action: 'edit'
    end
  end
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to action: :index
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      # 'возвращает  созданный ресурс в странице show.html.erb'
      redirect_to @article
    else
      render action: 'new'
    end


  end
  def index
    @articles_list = Article.all
  end
  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
