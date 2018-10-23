class CreateEstudiantes < ActiveRecord::Migration[5.2]
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.string :password
      t.string :carrera
      t.string :promedio
      t.integer :codigo
      t.integer :matricula
      t.boolean :monitor

      t.timestamps
    end
  end
end
