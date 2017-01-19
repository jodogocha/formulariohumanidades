json.extract! alumno, :id, :nombre, :apellido, :cedula, :telefono, :correo, :barrio, :ciudad, :created_at, :updated_at
json.url alumno_url(alumno, format: :json)