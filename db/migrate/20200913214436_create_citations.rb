class CreateCitations < ActiveRecord::Migration[6.0]
  def change
    create_table :citations do |t|
      t.string :dni
      t.string :nombre
      t.string :apellido
      t.string :email
      t.string :telefono
      t.date :fechacita

      t.timestamps
    end
  end
end
