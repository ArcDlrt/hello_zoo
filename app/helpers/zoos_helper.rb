module ZoosHelper
  def preview_image_tag(image)
    image_tag(image.url, alt: 'image', id: 'preview', class: "#{'block' if image.present?}")
  end
end