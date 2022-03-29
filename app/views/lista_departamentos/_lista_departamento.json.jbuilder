json.extract! lista_departamento, :id, :numdpto, :piso, :descripcion, :precio, :area, :numdormitorio, :created_at, :updated_at
json.url lista_departamento_url(lista_departamento, format: :json)