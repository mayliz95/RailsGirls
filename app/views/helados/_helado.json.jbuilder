json.extract! helado, :id, :nombre, :descripcion, :foto, :precio, :created_at, :updated_at
json.url helado_url(helado, format: :json)