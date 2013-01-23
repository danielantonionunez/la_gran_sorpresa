class CreatePresupuestoMensuals < ActiveRecord::Migration
  def change
    create_table :presupuesto_mensuals do |t|
      t.references :tipo_de_presupuesto
      t.date :periodo
      t.references :moneda

      t.timestamps
    end
    add_index :presupuesto_mensuals, :tipo_de_presupuesto_id
    add_index :presupuesto_mensuals, :moneda_id
  end
end
