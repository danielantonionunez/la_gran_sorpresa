class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombreusuario
      t.string :clave
      t.string :nombre
      t.string :apellidopaterno
      t.string :apellidomaterno
      t.boolean :activo
      t.references :empresa

      t.timestamps
    end
    add_index :usuarios, :empresa_id
  end
end
