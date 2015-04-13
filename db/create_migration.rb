end
create_table :arb007s do |t|
end
t.string :codigo, :limit => 20, :null => true
t.string :articulo, :limit => 20, :null => true
t.string :;, :null => true
end
end
create_table :art031s do |t|
end
t.string :codigo, :limit => 20, :null => true
t.string :nombre, :limit => 60, :null => true
t.string :referencia, :limit => 20, :null => true
t.string :familia, :limit => 40, :null => true
t.numeric :stock_alm_central, :null => true
t.string :nombre_fto_conv, :limit => 40, :null => true
t.numeric :cant_conversion, :null => true
t.boolean :pedir_piezas, :null => true
t.integer :proveedor, :null => true
t.string :;, :null => true
end
end
create_table :pro032s do |t|
end
t.integer :codigo, :null => true
t.string :nombre, :limit => 40, :null => true
t.string :email, :limit => 250, :null => true
t.string :telefono, :limit => 80, :null => true
t.string :movil, :limit => 80, :null => true
t.string :fax, :limit => 30, :null => true
t.string :nota, :limit => 150, :null => true
t.text :comentario, :null => true
t.string :;, :null => true
end
end
create_table :prr008s do |t|
end
t.string :referencia, :limit => 20, :null => true
t.string :articulo, :limit => 20, :null => true
t.integer :proveedor, :null => true
t.string :;, :null => true
end
end
create_table :ruteros do |t|
end
t.smallint :almacen, :null => true
t.integer :proveedor, :null => true
t.string :articulo, :limit => 20, :null => true
t.date :fecha, :null => true
t.numeric :cantidad, :null => true
t.numeric :piezas, :null => true
t.string :;, :null => true
