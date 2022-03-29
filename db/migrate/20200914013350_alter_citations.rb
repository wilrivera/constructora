class AlterCitations < ActiveRecord::Migration[6.0]
  def change
      add_column("citations", "mensaje", :text)

  end
end
