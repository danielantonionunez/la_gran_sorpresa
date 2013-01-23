class CreateFormaDePagoAlCreditosItemsJoinTable < ActiveRecord::Migration
  def change
    create_table :forma_de_pago_al_creditos_items, :id => false do |t|
      t.integer :forma_de_pago_al_credito_id
      t.integer :item_id
    end
  end
end
