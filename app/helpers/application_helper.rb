module ApplicationHelper
  def background_image_url
    Tenant.current.image_url
  end
end
