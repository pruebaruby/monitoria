class CreateMateria < ActiveRecord::Migration[5.2]
  def change
    create_table :materia do |t|
      t.string :nombre
      t.string :codigo
      t.string :carrera
      t.integer :creditos
      t.boolean :monitor

      t.timestamps
    end
  end
end
