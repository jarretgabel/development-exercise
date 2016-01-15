class PostsController < ApplicationController

  layout 'post'

  before_action :set_body_class

  def show
    @post = Post.where(slug: params[:id]).first
  end

  def update
    @post = Post.where(slug: params[:id]).first
    @post.update_attributes(post_params)

    respond_to do |format|
      format.js { render layout: false, locals: { post: @post } }
    end
  end

  private

  def set_body_class
    @body_classes = 'post'
  end

  def post_params
    params.require(:post).permit(
      :id,
      :title,
      :slug
    )
  end

end