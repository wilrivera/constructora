class CreateContactos < ActiveRecord::Migration[6.0]
  def change
    create_table :contactos do |t|
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.string :correo
      t.text :mensaje

      t.timestamps
    end
  end
end
