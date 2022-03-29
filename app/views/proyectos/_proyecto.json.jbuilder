json.extract! proyecto, :id, :nombre, :descripcion, :foto, :created_at, :updated_at
json.url proyecto_url(proyecto, format: :json)
