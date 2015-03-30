# == Schema Information
#
# Table name: customers
#
#  id              :integer          not null, primary key
#  customer_id     :string
#  company_name    :string
#  contact         :string
#  address1        :string
#  address2        :string
#  city            :string
#  state_province  :string
#  zip_postal_code :string
#  country         :string
#  email           :string
#  phone           :string
#  fax             :string
#  terms           :string
#  notes           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Customer < ActiveRecord::Base
	has_many :orders, :dependent => :delete_all
end
