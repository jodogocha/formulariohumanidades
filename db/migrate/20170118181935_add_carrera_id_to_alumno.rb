class AddCarreraIdToAlumno < ActiveRecord::Migration[5.0]
  def change
    add_reference :alumnos, :carrera, foreign_key: true
    add_foreign_key :alumnos, :carrera
  end
end
