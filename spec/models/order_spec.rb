# == Schema Information
#
# Table name: orders
#
#  id                   :integer          not null, primary key
#  customer_id          :integer
#  order_date           :date
#  po_number            :string
#  terms                :string
#  purchase_total       :decimal(11, 2)   default(0.0)
#  shipping_total       :decimal(11, 2)   default(0.0)
#  order_total          :decimal(11, 2)   default(0.0)
#  amount_paid          :decimal(11, 2)   default(0.0)
#  balance_due          :decimal(11, 2)   default(0.0)
#  special_instructions :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'rails_helper'

RSpec.describe Order, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
