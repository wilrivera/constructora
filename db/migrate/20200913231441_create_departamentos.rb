class CreateDepartamentos < ActiveRecord::Migration[6.0]
  def change
    create_table :departamentos do |t|
      t.integer :numdpto
      t.integer :piso
      t.text :descripcion
      t.decimal :precio
      t.integer :area
      t.integer :numdormitorio

      t.timestamps
    end
  end
end
