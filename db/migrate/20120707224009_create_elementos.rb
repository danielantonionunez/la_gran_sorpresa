class CreateElementos < ActiveRecord::Migration
  def change
    create_table :elementos do |t|
      t.string :nombre
      t.string :controlador
      t.references :seccion

      t.timestamps
    end
    add_index :elementos, :seccion_id
  end
end
