class CreateVenta < ActiveRecord::Migration[6.0]
  def change
    create_table :venta do |t|
      t.string :cliente
      t.string :formaPago
      t.string :dpto
      t.decimal :precio
      t.string :banco
      t.string :nroCtaOrigen
      t.decimal :montoAbonado
      t.decimal :montoDscto
      t.decimal :montoPagar

      t.timestamps
    end
  end
end
