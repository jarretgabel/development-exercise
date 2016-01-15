class PostsController < ApplicationController

  layout 'post'

  def show
    @post = Post.where(id: params[:id]).first
    @body_classes = 'post'
  end

end