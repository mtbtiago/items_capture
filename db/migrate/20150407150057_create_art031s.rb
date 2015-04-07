class CreateArt031s < ActiveRecord::Migration
  def change
    create_table :art031s do |t|
      t.string :codigo
      t.string :nombre
      t.string :referencia
      t.string :nombre_fto
      t.float :cant_medida
      t.integer :proveedor

      t.timestamps null: false
    end
    add_index :art031s, :codigo, unique: true
  end
end
