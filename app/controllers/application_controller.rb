class ApplicationController < ActionController::Base
protect_from_forgery
#*Authenticate* en ingles tiene el logeo basico solo se basa en el tiempo de conexion del browser que es 5 minutos normalmente
  def authenticate
    authenticate_or_request_with_http_digest do |name|
      if session[:logout_requested].nil?
        @user = Usuario.find_by_nombreusuario(name)
        @user.try(:clave) || false
      else
        session[:logout_requested] = nil
      end
    end
    if !@user.nil?
      session[:current_user] = @user.id if Rails.env != "test"
      proceso
    end
  end
#*Autenticacion* mantiene al usuario logeado hasta que de clic en salir de la pantalla del sistema
  def autenticacion
    if session[:current_user].nil?
      authenticate
    else
      @user = Usuario.find(session[:current_user])
      proceso
      true
    end
  end
#*Proceso* crea la empresa, roles y secciones necesarias para crear el menu
  def proceso
     @empresita = @user.empresa
     if !@empresita.nil? then @secciones = @empresita.seccions.includes(:elementos => :rols).where(:rols => {:id => @user.rols}) end
     @MenuConRolesUsuario = !@empresita.nil? && @secciones.any?
  end
end  
