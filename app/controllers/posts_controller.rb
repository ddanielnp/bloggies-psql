class PostsController < ApplicationController
  before_action :authenticate_user!
  # before_action :authenticate_user!, only: [:new, :edit]
  # before_action :authenticate_user!, except: [:new, :edit]

  def index
    news_url = 'https://newsapi.org/v1/articles?source=national-geographic&sortBy=top&apiKey=ba8b42abfab743f3bfe37fe0f9df3557'
    response = HTTParty.get(news_url)
    @news_data = response

    @all_posts = current_user.posts
    # @new_post = Post.new  #post is not tagged to user
    @new_post = current_user.posts.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    render html: 'show form to create new post'
  end

  def edit
    @edit_post = Post.find(params[:id])
  end

  def create
    creating_post = post_update_params
    # render json: params[:post]

  Post.create(creating_post)
    redirect_to posts_path

  end

  def destroy
    Post.destroy(params[:id])

    # deleted_post = Post.find(params[:id])
    # deleted_post.destroy
    redirect_to posts_path
  end

  def update
    updated_post = Post.find(params[:id])

    updated_post.update(post_update_params)

    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end

  def post_update_params
    params.require(:post).permit(:title, :content)
  end

end
