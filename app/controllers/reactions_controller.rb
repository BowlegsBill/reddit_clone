class ReactionsController < ApplicationController
  before_action :set_post

  def up
    render json: {}, status: 200
    # render json: {}, status: 500
  end

  def down
    render json: {}, status: 200
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end