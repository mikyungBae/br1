class CommentsController < ApplicationController

	http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
	
	def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end
 
 def destory
 	 @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@post)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end

end
