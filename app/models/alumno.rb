class Alumno < ApplicationRecord
  validates :nombre, :apellido, :cedula, :presence => { message: "No puede dejarse vacío" }
  validates :correo, email_format: { message: "Ingrese una dirección de correo válida" }
  belongs_to :tpersona
  belongs_to :carrera
end
