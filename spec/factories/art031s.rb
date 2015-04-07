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

FactoryGirl.define do
  factory :art031 do
    codigo "MyString"
nombre "MyString"
referencia "MyString"
nombre_fto "MyString"
cant_medida 1.5
proveedor 1
  end

end
