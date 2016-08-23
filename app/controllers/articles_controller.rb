class ArticlesController < ApplicationController
  def new
  end
  def create
    @ruby = params[:article].inspect
  end
end
