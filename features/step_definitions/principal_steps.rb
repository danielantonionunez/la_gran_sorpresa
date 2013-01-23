# encoding: utf-8
require 'cucumber/formatter/unicode'
$:.unshift(File.dirname(__FILE__) + '/../../lib')

Dado /^que he abierto un navegador$/ do
  html.chomp.chomp.should eq '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">'
end

Cuando /^visito la dirección del sistema (\w+)$/ do |pagina|
  if pagina == 'BitDragonSaaS'
    visit root_path
  else
    visit path_to(pagina)
  end
end

Entonces /^debería estar en la página principal del sistema (\w+)$/ do |pagina|
  if pagina == 'BitDragonSaaS'
    current_path.should eq root_path
  else
    current_path.should eq path_to(pagina) 
  end
end

Entonces /^debería haber un enlace que diga (.*)$/ do |vinculo|
  should have_content(vinculo)
  find("a", :text => vinculo)
end

Dado /^que quiero logearme con mi credencial usuario (\w+) y mi contraseña (\w+)$/ do |usuario, clave|
    page.driver.browser.digest_authorize(usuario, clave)
end

Cuando /^hago clic en el enlace (.*) me sale una interfaz de autenticación y ahí utilizo mi credencial$/ do |vinculo|
  click_link vinculo
end

Entonces /^ahora debería estar en la página llamada (\w+)$/ do |pagina|
  current_path.should eq "/#{pagina}"
end

Entonces /en la parte superior debería ver el texto que diga (.*)$/ do |texto|
  within("span#LblTitulo") do
    should have_content(texto)
  end
end

Entonces /^en la parte media debería ver el usuario que diga (\w+)$/ do |texto|
  within("span#LblUsuario") do
    should have_content(texto)
  end
end

Entonces /^en la parte media derecha debería ver el nombre de usuario que diga (.*)$/ do |texto|
  within("span#LblNombresUsuario") do
    should have_content(texto)
  end
end