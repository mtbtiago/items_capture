# == Schema Information
#
# Table name: pro032s
#
#  id         :integer          not null, primary key
#  codigo     :integer
#  nombre     :string
#  email      :string
#  telefono   :string
#  movil      :string
#  fax        :string
#  nota       :string
#  comentario :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pro032 < ActiveRecord::Base
end
