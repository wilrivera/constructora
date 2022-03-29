class CreateAlumnos < ActiveRecord::Migration[6.0]
  def change
    create_table :alumnos do |t|
      t.string :nombres
      t.string :dni
      t.string :email
      t.integer :edad

      t.timestamps
    end
  end
end
