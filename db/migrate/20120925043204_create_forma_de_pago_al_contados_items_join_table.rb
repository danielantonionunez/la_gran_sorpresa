class CreateFormaDePagoAlContadosItemsJoinTable < ActiveRecord::Migration
  def change
    create_table :forma_de_pago_al_contados_items, :id => false do |t|
      t.integer :forma_de_pago_al_contado_id
      t.integer :item_id
    end
  end
end
