class CreateDetalleDepartamentos < ActiveRecord::Migration[6.0]
  def change
    create_table :detalle_departamentos do |t|
      t.integer :supTotal
      t.integer :supTechada
      t.integer :banios
      t.integer :estacionamiento
      t.integer :banioServicio
      t.boolean :closet
      t.boolean :recepcion
      t.boolean :condominio
      t.boolean :centroComercial
      t.boolean :cercaColegio
      t.boolean :parque
      t.boolean :intercomunicador
      t.integer :ascensores
      t.integer :ambientes
      t.string :descambientes
      t.string :ubicacion
      t.references :departamento, null: false, foreign_key: true

      t.timestamps
    end
  end
end
