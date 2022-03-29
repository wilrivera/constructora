class CreateCita < ActiveRecord::Migration[6.0]
  def change
    create_table :cita do |t|
      t.string :dni
      t.string :nombre
      t.string :apellido
      t.string :email
      t.integer :telefono
      t.date :fechacita

      t.timestamps
    end
  end
end
