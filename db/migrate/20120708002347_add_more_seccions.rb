class AddMoreSeccions < ActiveRecord::Migration
  MORE_VALORES = [
    {:nombre => 'Principal', :empresa => Empresa.find_by_nombre("AngelusDragon")},
    {:nombre => 'Menu', :empresa => Empresa.find_by_nombre("AngelusDragon")}
  ]
  def up
    MORE_VALORES.each do |valor|
      Seccion.create!(valor)
    end
  end

  def down
    MORE_VALORES.each do |valor|
      Seccion.find_by_nombre_and_empresa_id(valor[:nombre], valor[:empresa]).destroy
    end
  end
end
