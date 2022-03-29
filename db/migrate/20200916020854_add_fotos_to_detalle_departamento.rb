class AddFotosToDetalleDepartamento < ActiveRecord::Migration[6.0]
  def change
    add_column :detalle_departamentos, :fotos, :string
  end
end
