class InicioController < ApplicationController
before_filter :authenticate

  # *Index*
  # Para _xml_ o _json_ devuelve los nombres completos y la empresa del usuario 
  def index
  @usuario=@user
    respond_to do |format|
      format.html 
      format.xml  { render :xml => ["nombre"=>@usuario.nombre_completo,"empresa" => @usuario.empresa.nombre] }
      format.json  { render :json => ["nombre"=>@usuario.nombre_completo,"empresa" => @usuario.empresa.nombre] }
    end
  end
  
  # *update*
  # Actualiza la clave del usuario, pero enruta a Usuario si es que tiene los accesos
  def update
  @usuario=@user
  render :text => params
  end
end
