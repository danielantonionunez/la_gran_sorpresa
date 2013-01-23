class CreateSeccions < ActiveRecord::Migration
  def change
    create_table :seccions do |t|
      t.string :nombre
      t.references :empresa

      t.timestamps
    end
    add_index :seccions, :empresa_id
  end
end
