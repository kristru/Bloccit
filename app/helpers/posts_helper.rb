module PostsHelper
  def user_is_authorized_for_post?(post)
    current_user !=nil && ((current_user == post.user || current_user.admin?) || (current_user == post.user || current_user.moderator?))
  end

  def no_posts(user)
    if user.posts.count == 0
      "#{user.name} has not submitted any posts yet."
    end
  end

end
