class DepartamentoAddImagen < ActiveRecord::Migration[6.0]
  def change
  	add_column("departamentos", "foto", :string)
  end
end
