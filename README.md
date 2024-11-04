# 🚀 Despliegue Automatizado de EC2 con Terraform

Bienvenido a este emocionante proyecto que automatiza el despliegue de instancias EC2 en AWS utilizando Terraform y GitHub Actions. Este flujo de trabajo no solo simplifica el proceso de implementación, sino que también permite una integración continua perfecta. ¡Vamos a empezar!

## 🔧 Características

- **Despliegue Automático**: Cada vez que se realiza un push a la rama principal, el flujo de trabajo se activa automáticamente para crear una nueva instancia EC2.
- **Gestión de Infraestructura como Código**: Utiliza Terraform para definir y gestionar la infraestructura de manera eficiente y reproducible.
- **Acceso SSH Seguro**: Implementa una clave SSH para transferir archivos y ejecutar comandos en la instancia EC2.
- **Instalación de Docker**: Configura automáticamente Docker y Docker Compose en la instancia, permitiendo un entorno listo para el despliegue de aplicaciones.

## 🌟 Flujo de Trabajo

El flujo de trabajo se compone de varios pasos:

1. **Checkout del Código**: Clona el repositorio para obtener los archivos necesarios.
2. **Configuración de Terraform**: Configura Terraform para su uso.
3. **Construcción de EC2**: Inicializa y aplica la configuración de Terraform para desplegar una instancia EC2 en AWS.
4. **Obtención de IP Pública**: Extrae la dirección IP pública de la instancia creada.
5. **Instalación de Docker**: Prepara el entorno instalando Docker y Docker Compose.
6. **Transferencia de Archivos**: Utiliza `rsync` para copiar archivos a la instancia EC2.
7. **Configuración y Despliegue**: Ejecuta comandos SSH para configurar el entorno y desplegar la aplicación utilizando Docker Compose.

## 📦 Requisitos Previos

- **AWS Account**: Debes tener una cuenta de AWS y configurar las credenciales adecuadas en los secretos de GitHub (`AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, `AWS_REGION`).
- **Terraform**: Familiarízate con Terraform para modificar la configuración de infraestructura según tus necesidades.

## 🚀 Cómo Empezar

1. **Clona este repositorio**:
   ```bash
   git clone https://github.com/tu_usuario/tu_repositorio.git
   cd tu_repositorio
   
2. **Configura tus secretos en GitHub**:
3. **Realiza un Push a la rama principal**:
   ```bash
    git add .
    git commit -m "Despliegue inicial de EC2"
    git push origin main

# Al finalizar obtendras el siguiente proyecto .
## Proyecto Django: Sitio Ficticio de Seguridad

¡Bienvenido al repositorio del **Proyecto de Seguridad en Django**! 🚀 Este proyecto es una aplicación ficticia creada para demostrar fallos de seguridad comunes y explorar su explotación y solución. Además, cuenta con un flujo de trabajo automatizado usando **GitHub Actions** para el despliegue en un servidor mediante **Docker Compose** por **SSH**.

## 📜 Descripción del Proyecto

Este proyecto está diseñado como una plataforma educativa y de prueba, que incluye intencionalmente algunas de las vulnerabilidades más comunes en aplicaciones web. Los principales fallos de seguridad que se incluyen en la aplicación son:

1. **Inyección SQL**: Puntos donde el código es vulnerable a manipulaciones de consulta SQL que pueden afectar a la base de datos.
2. **Inyección de Comandos del Sistema**: Lugares donde se permite la ejecución de comandos del sistema, exponiendo el servidor a manipulaciones no autorizadas.
3. **Fuga de Información Sensible**: Variables y rutas expuestas en el código que contienen información sensible, proporcionando a los usuarios no autorizados acceso a datos confidenciales.

## ⚠️ Importante

> **Advertencia**: Esta aplicación está diseñada con fines educativos y de prueba. No debe usarse en producción o en entornos públicos sin una auditoría de seguridad completa. 

## 📂 Estructura del Proyecto

- **/main**: Carpeta principal de la aplicación Django.
- **/prueba3**: Carpeta principal de la configuracion  Django.
- **/docker-compose.yml**: Archivo de configuración de Docker Compose para construir y ejecutar los contenedores de la aplicación.
- **requirements.txt**: Lista de dependencias de Python necesarias para ejecutar la aplicación.

## 🚩 Vulnerabilidades Incluidas

Aquí están las vulnerabilidades simuladas en esta aplicación:



1. **Inyección de Comandos del Sistema**:
   - Puntos en los que es posible que los usuarios envíen comandos del sistema que serán ejecutados directamente.
   - Ejemplo: Entrada en formularios o en la URL que pasa directamente al sistema sin verificación.

2. **Fuga de Información Sensible**:
   - Código que expone información como contraseñas, claves de API o rutas críticas en texto plano.
   - Ejemplo: Comentarios en el código que exponen detalles de configuración y otros datos sensibles.
   - En codigo puedes utilizar la herramienta web CyberChef para descubrir los secretos de la pagina 
  
