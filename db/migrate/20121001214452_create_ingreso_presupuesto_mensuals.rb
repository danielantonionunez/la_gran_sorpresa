class CreateIngresoPresupuestoMensuals < ActiveRecord::Migration
  def change
    create_table :ingreso_presupuesto_mensuals do |t|
      t.references :item
      t.float :precio
      t.references :presupuesto_mensual

      t.timestamps
    end
    add_index :ingreso_presupuesto_mensuals, :item_id
    add_index :ingreso_presupuesto_mensuals, :presupuesto_mensual_id
  end
end
