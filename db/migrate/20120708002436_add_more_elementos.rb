class AddMoreElementos < ActiveRecord::Migration
  MORE_VALORES = [
    {:nombre => 'Empresas', :controlador => 'empresas', :seccion => Seccion.find_by_nombre_and_empresa_id("Principal", Empresa.find_by_nombre("AngelusDragon")), :rol_ids => Rol.find_by_nombre("Administrador")},
    {:nombre => '- Roles', :controlador => 'rols', :seccion => Seccion.find_by_nombre_and_empresa_id("Principal", Empresa.find_by_nombre("AngelusDragon")), :rol_ids => Rol.find_by_nombre("Administrador")},
    {:nombre => '-- Usuarios', :controlador => 'usuarios', :seccion => Seccion.find_by_nombre_and_empresa_id("Principal", Empresa.find_by_nombre("AngelusDragon")), :rol_ids => Rol.find_by_nombre("Administrador")},
    {:nombre => 'Secciones', :controlador => 'seccions', :seccion => Seccion.find_by_nombre_and_empresa_id("Menu", Empresa.find_by_nombre("AngelusDragon")), :rol_ids => Rol.find_by_nombre("Administrador")},
    {:nombre => '- Elementos', :controlador => 'elementos', :seccion => Seccion.find_by_nombre_and_empresa_id("Menu", Empresa.find_by_nombre("AngelusDragon")), :rol_ids => Rol.find_by_nombre("Administrador")}
  ]
  def up
    MORE_VALORES.each do |valor|
      Elemento.create!(valor)
    end
  end

  def down
    MORE_VALORES.each do |valor|
      Elemento.find_by_nombre_and_seccion_id(valor[:nombre], valor[:seccion]).destroy
    end
  end
end
