module UsersHelper
  def user_avatar(user, classes)
    @avatar = user.avatar
    if @avatar.present?
      @avatar_user = image_tag(@avatar.url, alt: user.name, class: classes)
    else
      @avatar_user = image_tag("/avatar.jpg", alt: user.name, class: classes)
    end
  end
end
