class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.column :product_id, :string 
    	t.column :description, :string
    	t.column :list_price, :decimal, precision: 11, scale: 2, default: 0
    	t.column :shipping, :decimal, precision: 11, scale: 2, default: 0
      t.timestamps null: false
    end
    add_index :products, :product_id, unique: true
  end
end
