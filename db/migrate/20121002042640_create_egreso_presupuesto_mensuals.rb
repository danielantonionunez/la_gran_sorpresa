class CreateEgresoPresupuestoMensuals < ActiveRecord::Migration
  def change
    create_table :egreso_presupuesto_mensuals do |t|
      t.references :item
      t.float :precio
      t.references :presupuesto_mensual

      t.timestamps
    end
    add_index :egreso_presupuesto_mensuals, :item_id
    add_index :egreso_presupuesto_mensuals, :presupuesto_mensual_id
  end
end
