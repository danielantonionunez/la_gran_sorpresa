class CreateTipoDePresupuestos < ActiveRecord::Migration
  def change
    create_table :tipo_de_presupuestos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
