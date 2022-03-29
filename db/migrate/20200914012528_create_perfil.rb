class CreatePerfil < ActiveRecord::Migration[6.0]
  def change
    create_table :perfils do |t|
      t.string :name
    end
  end
end
