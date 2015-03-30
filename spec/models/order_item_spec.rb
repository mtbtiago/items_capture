# == Schema Information
#
# Table name: order_items
#
#  id             :integer          not null, primary key
#  order_id       :integer
#  line_no        :integer
#  product_id     :integer
#  quantity       :integer
#  purchase_price :decimal(11, 2)   default(0.0)
#  shipping       :decimal(11, 2)   default(0.0)
#  purchase_total :decimal(11, 2)   default(0.0)
#  shipping_total :decimal(11, 2)   default(0.0)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

RSpec.describe OrderItem, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
