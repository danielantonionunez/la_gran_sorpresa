class AddDemostracionSeccions < ActiveRecord::Migration
  MORE_VALORES = [
    {:nombre => 'Presupuesto', :empresa => Empresa.find_by_nombre("Demostración")},
    {:nombre => 'Catalogos', :empresa => Empresa.find_by_nombre("Demostración")}
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