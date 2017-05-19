class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]

  # GET /posts
  def index
    @posts = Post.all.reverse

    render json: @posts
  end

  # GET /posts/1 , and its Comments
  def show
    comments = @post.comments.reverse
    render json: {post: @post, comments: comments}
  end

  # POST /posts
  def create
    @post = Post.new(post_params)

    if @post.save
      render json: @post, status: :created
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1, and its comments
  def destroy
    # deleteComments = @post.comments
    # deleteComments.each do |c|
    #   Comment.delete(c.id)
    # end
    @post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_params
      params.require(:post).permit(:title, :content, :author, :political_affiliation)
    end
end
