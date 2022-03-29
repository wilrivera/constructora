class AddPasswordToUsuario < ActiveRecord::Migration[6.0]
  def change
    add_column :usuarios, :password, :string
  end
end
