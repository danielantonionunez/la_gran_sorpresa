class AddMoreUsuarios < ActiveRecord::Migration
  MORE_VALORES = [
    {:nombreusuario => 'dnunez', :nombre => 'Daniel Antonio', :clave => '123456', :apellidopaterno => 'Nunez', :apellidomaterno => 'Carhuayo', :activo => true, :empresa => Empresa.find_by_nombre("AngelusDragon"), :rol_ids => Rol.find_by_nombre("Administrador")},
    {:nombreusuario => 'kmedina', :nombre => 'Karem Nayrobi', :clave => '123456', :apellidopaterno => 'Medina', :apellidomaterno => 'Betalleluz', :activo => true, :empresa => Empresa.find_by_nombre("AngelusDragon"), :rol_ids => Rol.find_by_nombre("Administrador")}
  ]
  def up
    MORE_VALORES.each do |valor|
      Usuario.create!(valor)
    end
  end

  def down
    MORE_VALORES.each do |valor|
      Usuario.find_by_nombreusuario(valor[:nombreusuario]).destroy
    end
  end
end
