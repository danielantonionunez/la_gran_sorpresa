class AddDemostracionEmpresas < ActiveRecord::Migration
  MORE_VALORES = [
    {:nombre => 'Demostración'}
  ]
  def up
    MORE_VALORES.each do |valor|
      Empresa.create!(valor)
    end
  end

  def down
    MORE_VALORES.each do |valor|
      Empresa.find_by_nombre(valor[:nombre]).destroy
    end
  end
end
