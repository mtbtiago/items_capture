
create_table :arb007s do |t|
  t.char :codigo, :limit => 20, :null => true
  t.char :articulo, :limit => 20, :null => true
end

create_table :art031s do |t|
  t.char :codigo, :limit => 20, :null => true
  t.char :nombre, :limit => 60, :null => true
  t.char :referencia, :limit => 20, :null => true
  t.char :familia, :limit => 40, :null => true
  t.numeric :stock_alm_central, :null => true
  t.char :nombre_fto_conv, :limit => 40, :null => true
  t.numeric :cant_conversion, :null => true
  t.boolean :pedir_piezas, :null => true
  t.integer :proveedor, :null => true
end

create_table :pro032s do |t|
  t.integer :codigo, :null => true
  t.char :nombre, :limit => 40, :null => true
  t.char :email, :limit => 250, :null => true
  t.char :telefono, :limit => 80, :null => true
  t.char :movil, :limit => 80, :null => true
  t.char :fax, :limit => 30, :null => true
  t.char :nota, :limit => 150, :null => true
  t.text :comentario, :null => true
end

create_table :prr008s do |t|
  t.char :referencia, :limit => 20, :null => true
  t.char :articulo, :limit => 20, :null => true
  t.integer :proveedor, :null => true
end

create_table :ruteros do |t|
  t.smallint :almacen, :null => true
  t.integer :proveedor, :null => true
  t.char :articulo, :limit => 20, :null => true
  t.date :fecha, :null => true
  t.numeric :cantidad, :null => true
  t.numeric :piezas, :null => true
end
