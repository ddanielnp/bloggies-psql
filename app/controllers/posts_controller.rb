class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  # before_action :authenticate_user!, except: [:new, :edit]

  def index
    render html: "show all posts by #{current_user.name}"
  end

  def show
    render html: 'show all posts'
  end

  def new
    render html: 'show form to create new post'
  end

  def edit
    render html: 'show form to edit post'
  end

end
