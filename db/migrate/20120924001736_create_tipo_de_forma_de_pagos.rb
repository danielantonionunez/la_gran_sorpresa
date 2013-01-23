class CreateTipoDeFormaDePagos < ActiveRecord::Migration
  def change
    create_table :tipo_de_forma_de_pagos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
