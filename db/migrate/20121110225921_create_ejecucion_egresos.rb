class CreateEjecucionEgresos < ActiveRecord::Migration
  def change
    create_table :ejecucion_egresos do |t|
      t.float :precio
      t.references :forma_de_pago_al_contado
      t.references :forma_de_pago_al_credito
      t.references :egreso_presupuesto_mensual

      t.timestamps
    end
    add_index :ejecucion_egresos, :forma_de_pago_al_contado_id
    add_index :ejecucion_egresos, :forma_de_pago_al_credito_id
    add_index :ejecucion_egresos, :egreso_presupuesto_mensual_id
  end
end
