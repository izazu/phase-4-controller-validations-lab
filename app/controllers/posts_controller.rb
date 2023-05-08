class PostsController < ApplicationController

  def show
    post = Post.find(params[:id])
    
    render json: post
  end

  def update
    post = Post.find(params[:id])
  
    if post.update(post_params)
      render json: post, status: :ok
    else
      render json: { errors: post.errors.as_json }, status: :unprocessable_entity
    end
  end
  
  private

  def post_params
    params.permit(:category, :content, :title)
  end

end
