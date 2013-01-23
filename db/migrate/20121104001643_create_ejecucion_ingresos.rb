class CreateEjecucionIngresos < ActiveRecord::Migration
  def change
    create_table :ejecucion_ingresos do |t|
      t.float :precio
      t.references :forma_de_pago_al_contado
      t.references :forma_de_pago_al_credito
      t.references :ingreso_presupuesto_mensual

      t.timestamps
    end
    add_index :ejecucion_ingresos, :forma_de_pago_al_contado_id
    add_index :ejecucion_ingresos, :forma_de_pago_al_credito_id
    add_index :ejecucion_ingresos, :ingreso_presupuesto_mensual_id
  end
end
