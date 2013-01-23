class AddDemostracionElementos < ActiveRecord::Migration
  MORE_VALORES = [
    {:nombre => 'Items', :controlador => 'items', :seccion => Seccion.find_by_nombre_and_empresa_id("Presupuesto", Empresa.find_by_nombre("Demostración")), :rol_ids => Rol.find_by_nombre("Usuario")},
    {:nombre => 'Financiadores', :controlador => 'financiadors', :seccion => Seccion.find_by_nombre_and_empresa_id("Catalogos", Empresa.find_by_nombre("Demostración")), :rol_ids => Rol.find_by_nombre("Usuario")},
    {:nombre => 'Formas de pago al contado', :controlador => 'forma_de_pago_al_contados', :seccion => Seccion.find_by_nombre_and_empresa_id("Catalogos", Empresa.find_by_nombre("Demostración")), :rol_ids => Rol.find_by_nombre("Usuario")},
    {:nombre => 'Formas de pago al crédito', :controlador => 'forma_de_pago_al_creditos', :seccion => Seccion.find_by_nombre_and_empresa_id("Catalogos", Empresa.find_by_nombre("Demostración")), :rol_ids => Rol.find_by_nombre("Usuario")},
    {:nombre => 'Tipos de forma de pago', :controlador => 'tipo_de_forma_de_pagos', :seccion => Seccion.find_by_nombre_and_empresa_id("Catalogos", Empresa.find_by_nombre("Demostración")), :rol_ids => Rol.find_by_nombre("Usuario")},
    {:nombre => 'Monedas', :controlador => 'monedas', :seccion => Seccion.find_by_nombre_and_empresa_id("Catalogos", Empresa.find_by_nombre("Demostración")), :rol_ids => Rol.find_by_nombre("Usuario")},
    {:nombre => 'Tipos de presupuesto', :controlador => 'tipo_de_presupuestos', :seccion => Seccion.find_by_nombre_and_empresa_id("Presupuesto", Empresa.find_by_nombre("Demostración")), :rol_ids => Rol.find_by_nombre("Usuario")},
    {:nombre => 'Presupuestos mensuales', :controlador => 'presupuesto_mensuals', :seccion => Seccion.find_by_nombre_and_empresa_id("Presupuesto", Empresa.find_by_nombre("Demostración")), :rol_ids => Rol.find_by_nombre("Usuario")}
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