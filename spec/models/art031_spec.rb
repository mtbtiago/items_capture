# == Schema Information
#
# Table name: art031s
#
#  id          :integer          not null, primary key
#  codigo      :string
#  nombre      :string
#  referencia  :string
#  nombre_fto  :string
#  cant_medida :float
#  proveedor   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Art031, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
