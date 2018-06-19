module TopicsHelper
  def user_is_authorized_for_topics?
      current_user != nil && (current_user.admin? || current_user.moderator?)
  end
end
