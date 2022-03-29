class CreateProformaDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :proforma_details do |t|
      
      t.string :dpto
      t.float :base
      t.float :area
      t.integer :descuento
      t.float :total
      t.references :proyecto, foreign_key: true
      t.references :proforma, foreign_key: true


      t.timestamps
    end
  end
end
