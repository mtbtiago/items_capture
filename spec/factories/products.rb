# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  product_id  :string
#  description :string
#  list_price  :decimal(11, 2)   default(0.0)
#  shipping    :decimal(11, 2)   default(0.0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :product do
    
  end

end
