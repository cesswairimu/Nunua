50.times do
  Product.create( title: Faker::Commerce.product_name,
                 description: Faker::Lorem.paragraph,
                 image_url: Faker::Avatar.image,
                 price: Faker::Commerce.price)
end
