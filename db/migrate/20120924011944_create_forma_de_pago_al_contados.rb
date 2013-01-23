class CreateFormaDePagoAlContados < ActiveRecord::Migration
  def change
    create_table :forma_de_pago_al_contados do |t|
      t.string :nombre
      t.references :tipo_de_forma_de_pago
      t.references :financiador
      t.references :moneda

      t.timestamps
    end
    add_index :forma_de_pago_al_contados, :tipo_de_forma_de_pago_id
    add_index :forma_de_pago_al_contados, :financiador_id
    add_index :forma_de_pago_al_contados, :moneda_id
  end
end
