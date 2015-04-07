# rails g model Art031 codigo:string:uniq nombre:string referencia:string nombre_fto:string cant_medida:float proveedor:integer
# rails g model Pro032 codigo:integer:uniq nombre:string email:string telefono:string movil:string fax:string nota:string comentario:text
def load_from_yaml_file(model)
  model_name = model.name.downcase

  ActiveRecord::Base.connection.execute("TRUNCATE #{model_name}s RESTART IDENTITY")

  yml = YAML.load_file("db/#{model_name}.yml")
  ActiveRecord::Base.transaction do
    yml[model_name]['records'].each do |rec|
      rec_hash = Hash[yml[model_name]['columns'].zip(rec)]
      model.create(rec_hash)
    end
  end

end