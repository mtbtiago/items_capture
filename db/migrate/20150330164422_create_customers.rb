class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
    	t.column :customer_id, :string
    	t.column :company_name, :string
    	t.column :contact, :string
    	t.column :address1, :string
    	t.column :address2, :string
    	t.column :city, :string
    	t.column :state_province, :string
    	t.column :zip_postal_code, :string
    	t.column :country, :string
    	t.column :email, :string
    	t.column :phone, :string
    	t.column :fax, :string
    	t.column :terms, :string
    	t.column :notes, :text

      t.timestamps null: false
    end
    add_index :customers, :customer_id, unique: true
  end
end
