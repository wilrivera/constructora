class AddEmailToUsuario < ActiveRecord::Migration[6.0]
  def change
    add_column :usuarios, :email, :string
  end
end
