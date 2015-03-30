class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.column :customer_id, :integer
    	t.column :order_date, :date
    	t.column :po_number, :string
    	t.column :terms, :string
    	t.column :purchase_total, :decimal, precision: 11, scale: 2, default: 0
    	t.column :shipping_total, :decimal, precision: 11, scale: 2, default: 0
    	t.column :order_total, :decimal, precision: 11, scale: 2, default: 0
    	t.column :amount_paid, :decimal, precision: 11, scale: 2, default: 0
    	t.column :balance_due, :decimal, precision: 11, scale: 2, default: 0
    	t.column :special_instructions, :text

      t.timestamps null: false
    end
    add_index :orders, [:customer_id, :order_date], 
    	order: {customer_id: :asc, order_date: :desc},
    	name: 'ix_customer_id'
    add_index :orders, :order_date,	order: {order_date: :desc}, name: 'ix_order_date'
  end
end
