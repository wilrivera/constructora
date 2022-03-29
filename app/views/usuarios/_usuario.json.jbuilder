json.extract! usuario, :id, :dni, :nombres, :apellidos, :perfil, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
