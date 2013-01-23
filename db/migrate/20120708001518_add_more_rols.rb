class AddMoreRols < ActiveRecord::Migration
  MORE_VALORES = [
    {:nombre => 'Administrador'},
    {:nombre => 'Usuario'}
  ]
  def up
    MORE_VALORES.each do |valor|
      Rol.create!(valor)
    end
  end

  def down
    MORE_VALORES.each do |valor|
      Rol.find_by_nombre(valor[:nombre]).destroy
    end
  end
end
