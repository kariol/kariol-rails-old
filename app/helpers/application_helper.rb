module ApplicationHelper
  def yield_with_default(holder, default)
    if content_for?(holder)
      str = content_for(holder).squish
      str += " | #{default}" if holder == :title
      str
    else
      default
    end
  end
  def avatar_tag(user, options = {})
    if user.photo
      options = {width: 256, height: 256, crop: :fill}.merge(options)
      cl_image_tag user.photo.path, options
    elsif user.facebook_picture_url
      image_tag user.facebook_picture_url, options
    else
      image_tag 'logo.png', options
    end
  end

  def cl_image_path_with_default(photo, options = {})
    if photo
      cl_image_path photo.path, options
    else
      image_path 'logo.png', options
    end
  end

  def cl_image_tag_with_default(photo, options = {})
    if photo
      cl_image_tag photo.path, options
    else
      image_tag 'logo.png', options
    end
  end
end
