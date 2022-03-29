class CreateFormaPagos < ActiveRecord::Migration[6.0]
  def change
    create_table :forma_pagos do |t|
      t.string :name

      t.timestamps
    end
  end
end
