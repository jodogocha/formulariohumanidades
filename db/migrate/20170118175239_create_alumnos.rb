class CreateAlumnos < ActiveRecord::Migration[5.0]
  def change
    create_table :alumnos do |t|
      t.string :nombre
      t.string :apellido
      t.integer :cedula
      t.integer :telefono
      t.string :correo
      t.string :barrio
      t.string :ciudad

      t.timestamps
    end
  end
end
