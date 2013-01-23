class CreateRolsUsuariosJoinTable < ActiveRecord::Migration
  def change
    create_table :rols_usuarios, :id => false do |t|
      t.integer :rol_id
      t.integer :usuario_id
    end
  end
end
