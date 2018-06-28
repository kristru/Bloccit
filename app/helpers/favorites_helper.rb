module FavoritesHelper
  def no_favorites(user)
    if user.favorites.count == 0
      "#{user.name} has not favorited any posts yet."
    end
  end
end
