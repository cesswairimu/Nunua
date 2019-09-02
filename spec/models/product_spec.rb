require 'rails_helper'

describe Product do

    it 'has a valid product' do
      expect(build(:product)).to be_valid
    end

    it 'has a title present' do
      let(:product)  { create(:product, title: nil) }
      new_product.valid?
      expect(new_product.errors[:title]).to include("can't be blank")
    end
end
