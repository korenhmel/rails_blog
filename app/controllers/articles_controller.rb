class ArticlesController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create]

  def new
  end
  def show
    @article = Article.find(params[:id])
  end
  def edit
    @article = Article.find(params[:id])
    # if @article.user_id == nil
    #   @article.user_id = current_user.id
    #   elsif @article.user_id == current_user.id
    #   @article
    # else
    #   @error = "The rights to edit this article only belongs to its owner."
    # end
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
  def user
    unless current_user == nil
      curent_user.username.upcase
    end
  end
  private
  def article_params
    params.require(:article).permit(:title, :text, :user_id)
  end
end
