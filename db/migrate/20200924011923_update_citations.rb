class UpdateCitations < ActiveRecord::Migration[6.0]
  def change
    add_column("citations", "agente", :string)

  end
end
