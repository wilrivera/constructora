class ProyectoAlterProyecto < ActiveRecord::Migration[6.0]
  def change
  	add_column("proyectos", "avatar", :string)
  end
end
