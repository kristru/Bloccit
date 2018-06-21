class PostsController < ApplicationController
  before_action :require_sign_in, except: :show
  before_action :authorize_user, except: [:show, :new, :create]

  def new
    @topic = Topic.find(params[:topic_id])
    @post = Post.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.build(post_params)
#we're associating the post with the user who created it
    @post.user = current_user
    if @post.save
      flash[:notice] = "Post was saved!"
#here we change the redirect to the topic Show view
      redirect_to [@topic, @post]
    else
      flash.now[:alert] = "There was an error saving the post. Please try again."
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.assign_attributes(post_params)

    if @post.save
      flash[:notice] = "Post was updated."
#Set the redirect to the Topic Show view
      redirect_to [@post.topic, @post]
    else
      flash.now[:alert] = "There was an error saving the post. Please try again."
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:notice] = "\"#{@post.title}\" was deleted successfully."
#When a post is deleted, it redirects to the Topic Show view
      redirect_to @post.topic
    else
      flash.now[:alert] = "There was an error deleting the post."
      render :show
    end
  end

#anything below this will be considered a private method and wont be able to be accessed except through Posts
  private
  def post_params
    params.require(:post).permit(:title, :body)
  end

  def authorize_user
     post = Post.find(params[:id])

     unless current_user == post.user || current_user.admin? || current_user.moderator?
       flash[:alert] = "You must be an admin to do that."
       redirect_to [post.topic, post]
     end
   end

   def after_create
    new_vote = Post.find(params[:id, :user])
   end

end
