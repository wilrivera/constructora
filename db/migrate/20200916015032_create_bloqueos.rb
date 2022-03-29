class CreateBloqueos < ActiveRecord::Migration[6.0]
  def change
    create_table :bloqueos do |t|
      t.string :nombres
      t.string :apellidos
      t.string :dni
      t.integer :proyecto
      t.integer :departamento
      t.string :voucher
      t.string :tipo
      t.integer :monto

      t.timestamps
    end
  end
end
