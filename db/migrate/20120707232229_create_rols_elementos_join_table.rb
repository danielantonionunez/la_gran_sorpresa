class CreateRolsElementosJoinTable < ActiveRecord::Migration
  def change
    create_table :elementos_rols, :id => false do |t|
      t.integer :rol_id
      t.integer :elemento_id
    end
  end
end
