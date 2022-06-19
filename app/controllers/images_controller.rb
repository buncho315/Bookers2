class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def create
    @images = Image.new(image_params)
    @post_image.user_id = current_user.id
    @image.save
    redirect_to images_path
  end

  private
  def image_params
    params.require(:image).permit(:shop_name, :image, :caption)
  end

end