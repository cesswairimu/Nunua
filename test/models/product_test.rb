require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test 'product invalid if no attributes' do
    product =  Product.new()
    assert product.invalid?
  end

  test 'image_url must be valid' do
    product = Product.create(title: 'this',
                             description: 'that',
                             price: 56,
                             image_url: 'this.yml')
    # assert_includes ['must be a URL for GIF, JPG or PNG image.'], product.errors[:image_url]
  end
end
