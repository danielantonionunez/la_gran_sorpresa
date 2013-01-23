# language: es
Característica: Logearse al sistema
  Como un administrador
  Quiero logearme de manera segura en el sistema
  Para autenticarme y tener mis accesos

  Escenario: Logearse en el sistema web como administrador
    Dado que he abierto un navegador
    Cuando visito la dirección del sistema BitDragonSaaS
    Entonces debería estar en la página principal del sistema BitDragonSaaS
    Y debería haber un enlace que diga Clic aquí para iniciar sesión
    Dado que quiero logearme con mi credencial usuario dnunez y mi contraseña 123456
    Cuando hago clic en el enlace Clic aquí para iniciar sesión me sale una interfaz de autenticación y ahí utilizo mi credencial
    Entonces ahora debería estar en la página llamada inicio
    Y en la parte superior debería ver el texto que diga Rol Administrador
    Entonces en la parte media debería ver el usuario que diga dnunez
    Y en la parte media derecha debería ver el nombre de usuario que diga Daniel Antonio Núñez Carhuayo