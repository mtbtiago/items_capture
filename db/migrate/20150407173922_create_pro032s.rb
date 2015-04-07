class CreatePro032s < ActiveRecord::Migration
  def change
    create_table :pro032s do |t|
      t.integer :codigo
      t.string :nombre
      t.string :email
      t.string :telefono
      t.string :movil
      t.string :fax
      t.string :nota
      t.text :comentario

      t.timestamps null: false
    end
    add_index :pro032s, :codigo, unique: true
  end
end
