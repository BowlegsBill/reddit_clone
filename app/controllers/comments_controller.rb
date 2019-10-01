class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post

  def create
    @comment = @post.comments.new(comment_params.merge(user: current_user))

    if @comment.save
      redirect_to post_path(@post), notice: 'Comment was successfully created.'
    else
       render 'posts/show'
    end
  end

  private
    def set_post
      @post = Post.find(params[:post_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:body)
    end
end
