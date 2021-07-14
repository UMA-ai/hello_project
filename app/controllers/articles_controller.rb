class ArticlesController < ApplicationController
  $showsub_num = -1

  def index
    $showsub_num = $showsub_num + 1

    @articles = Article.all
  end

  

  def showsub

  end

  def num_reset
    $showsub_num = -1
    redirect_to :action => 'index'

  end

  def show

    @article = Article.find(params[:id])
    
  end

  #投稿機能
  def new

  end
  
  #Article.new(content: params[:content])の意味がわからん
  def create
    @post = Article.new(title: params[:subject], teacher: params[:teacher], comment: params[:comment])
    @post.save
    redirect_to("/articles")
  
  end
  

end
