class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
    	t.column :order_id, :integer
    	t.column :line_no, :integer
    	t.column :product_id, :integer
    	t.column :quantity, :integer
    	t.column :purchase_price, :decimal, precision: 11, scale: 2, default: 0
    	t.column :shipping, :decimal, precision: 11, scale: 2, default: 0
    	t.column :purchase_total, :decimal, precision: 11, scale: 2, default: 0
    	t.column :shipping_total, :decimal, precision: 11, scale: 2, default: 0

      t.timestamps null: false
    end
    add_index :order_items, [:order_id, :line_no]
  end
end
