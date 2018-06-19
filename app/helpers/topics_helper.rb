module TopicsHelper
  def user_is_authorized_for_topics?
<<<<<<< HEAD
    current_user != nil && (current_user.admin? || current_user.moderator?)
=======
      current_user != nil && (current_user.admin? || current_user.moderator?)
>>>>>>> railsVoting_CP
  end
end
