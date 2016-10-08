class Product < ActiveRecord::Base

  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  # We are validating that the image_url is in gif, jpg, or png format via regular expression
  validates :image_url, allow_blank: true, format: {
    with: %r{\. (gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG, or PNG image'
  }

end
