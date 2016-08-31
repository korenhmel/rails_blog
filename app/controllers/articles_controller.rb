class ArticlesController < ApplicationController
  def new
  end
  def create
    @article = Article.new(contact_params)
    if @article.valid?
      @article.save
    else
      render action: 'new'
    end
  end
  def contact_params
    params.require(:article).permit(:title, :text)
  end
end
