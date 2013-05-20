class CommentsController < ApplicationController

	 http_basic_authenticate_with :name => "admin", :password => "secret", :only => :destroy
 
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    redirect_to post_path(@post)
    UserMailer.comment_created(@post).deliver
  end

  def delete

  end

end