class CreateFinanciadors < ActiveRecord::Migration
  def change
    create_table :financiadors do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
