class Product < ApplicationRecord
  validates_presence_of :title, :image_url, :description, :price
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with:
    %r{\.(gif|jpg|png)\W}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }
end
