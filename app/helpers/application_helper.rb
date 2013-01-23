module ApplicationHelper
	#En la *ruta* es una _lista_ _blanca_ de los controladores que tienen codificacion y estan funcionando.
	#El *controlador* se trata un parametro _String_ para realizar su comprobacion en la lista blanca. 
	def ruta(controlador)
		case controlador
			#para admin - principal
			when "empresas"
				empresas_path
			when "rols"
				rols_path
			when "usuarios"
				usuarios_path
			when "seccions"
				seccions_path
			when "elementos"
				elementos_path
			#para demostración programa de presupuesto
			when "monedas"
			  monedas_path
			when "financiadors"
				financiadors_path
			when "tipo_de_forma_de_pagos"
				tipo_de_forma_de_pagos_path
			when "forma_de_pago_al_contados"
				forma_de_pago_al_contados_path
			when "forma_de_pago_al_creditos"
				forma_de_pago_al_creditos_path
			when "items"
				items_path
			when "tipo_de_presupuestos"
				tipo_de_presupuestos_path
			when "presupuesto_mensuals"
				presupuesto_mensuals_path
			#si la ruta no se encuentra en esta lista blanca se va a la página inicial
			else
				root_path
		end
	end
	#El ordenador coloca el nombre que aparece en la cabecera del sistema principal
	#El *actual* es un _Boolean_ que indica si la pagina actual se encuentra en el menu
	#- Si es verdadero, devuelve 2 estilos para iluminar el elemento del menu y si esta en la pagina actual (_boolean_), titulo (_string_) y descripcion (_string_)
	#- Si es falso, devuelve 2 estilos normales
	#El *parametro* es un _String_ que indica que accion se esta realizando, solo acepta:
	#* index, show, edit, new, create y update
	#El *nombre* es el nombre que han colocado al _elemento_ del menu
	def ordenador(actual, parametro,nombre)
		if actual
				  case parametro
					when "index" 		
					 titulo = "Lista de #{nombre}"
					 descripcion = "En esta sección se listan #{nombre} existentes"
					when "show" 
					 titulo = "Información de #{nombre}"
					 descripcion = "Se muestra la información completa correpondiente al ítem elegido de #{nombre}"
					when "edit" 
					 titulo = "Edición de #{nombre}"
					 descripcion = "En este formulario puede usted editar #{nombre}"
					when "new" 
					 titulo = "Creación de #{nombre}"
					 descripcion = "En este formulario puede usted crear #{nombre}"
					when "create"
					 titulo = "Creación de #{nombre}"
					 descripcion = "En este formulario puede usted crear #{nombre} siempre y cuando ingrese bien los datos"
					when "update" 
					 titulo = "Edición de #{nombre}"
					 descripcion = "En este formulario puede usted editar #{nombre} siempre y cuando ingrese bien los datos"
					when "ejecucion"
					 titulo = "Ejecución de #{nombre}"
					 descripcion = "Se muestra la información completa correpondiente al ítem elegido de #{nombre} para que pueda ser ejecutado"					
					else
					 titulo = "Edición de Upss! debes definir la accion en el helper! para #{nombre} en la accion #{parametro}"
					 descripcion = "En este formulario puede usted Upsss aqui tambien debes definir la accion en el helper! para #{nombre} en la accion #{parametro}"					 					
				  end 
			return :menu1NSeleccionado,:menu1N2Seleccionado,actual,titulo,descripcion
		else
			return :menu1N,:menu1N2
		end		
	end
end
