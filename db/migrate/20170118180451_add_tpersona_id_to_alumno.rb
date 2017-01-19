class AddTpersonaIdToAlumno < ActiveRecord::Migration[5.0]
  def change
    add_reference :alumnos, :tpersona, foreign_key: true
    add_foreign_key :alumnos, :tpersona
  end
end
