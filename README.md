# Portfolio de Ernesto Cubo

Este es el portfolio personal de Ernesto Cubo, creado con **Svelte** como framework de frontend. El proyecto está diseñado como una **aplicación de página única (SPA)**, lo que significa que todo el contenido se carga dinámicamente sin necesidad de recargar la página.

## Índice

- [Características](#características)
- [Instalación](#instalación)
  - [Clonar el repositorio](#1-clona-el-repositorio)
  - [Instalar dependencias](#2-instala-las-dependencias)
  - [Ejecutar el proyecto localmente](#3-ejecuta-el-proyecto-localmente)
- [Despliegue](#despliegue)
  - [Despliegue en tu propio servidor](#1-despliegue-en-tu-propio-servidor)
  - [Despliegue en servicios de hosting](#2-despliegue-en-servicios-de-hosting)
- [Estructura del proyecto](#estructura-del-proyecto)
- [Contribuciones](#contribuciones)
- [Contacto](#contacto)
- [Licencia](#licencia)

---

## Características

- **Diseño minimalista y responsive**: La web está diseñada para ofrecer una experiencia fluida y fácil de usar en cualquier dispositivo.
- **Contenido dinámico**: La página está construida de manera dinámica para mostrar mis proyectos, certificaciones, investigaciones, colaboraciones y más.
- **Tecnologías utilizadas**:  
  - **Svelte**: Un framework JavaScript moderno para crear interfaces de usuario rápidas y reactivas.
  - **Tailwind CSS**: Framework de CSS utilizado para la creación rápida de interfaces con un diseño limpio y funcional.
  - **GitHub Actions**: Para la automatización del despliegue del proyecto en el servidor.

---

## Instalación

Para configurar y ejecutar el proyecto localmente, sigue estos pasos:

### 1. Clona el repositorio

```bash
git clone <https://github.com/ernestocubo/portfolio.git>
cd portfolio
```

### 2. Instala las dependencias

Si aún no tienes Node.js instalado, instala la versión más reciente desde [aquí](https://nodejs.org/).

Luego, instala las dependencias del proyecto:

```bash
npm install
```

### 3. Ejecuta el proyecto localmente

Para iniciar un servidor local y ver la aplicación en acción, usa el siguiente comando:

```bash
npm run dev
```

Esto abrirá una instancia local de la aplicación en tu navegador en `http://localhost:5000`.

---

## Despliegue

Este proyecto está configurado para el despliegue automático utilizando **GitHub Actions**. La integración continua y el despliegue continuo (CI/CD) aseguran que el proyecto esté siempre actualizado en el servidor.

### 1. Despliegue en tu propio servidor

Si deseas desplegarlo en tu propio servidor, puedes construir la versión de producción con:

```bash
npm run build
```

Esto generará los archivos estáticos en el directorio `/build`, listos para ser servidos por un servidor web como **Nginx** o **Apache**.

### 2. Despliegue en servicios de hosting

Este proyecto también puede ser desplegado fácilmente en plataformas como **Vercel**, **Netlify** o **Render** con solo conectarlo a tu repositorio de GitHub. Estas plataformas proporcionan una integración sencilla con Svelte y despliegue automático al hacer push a tu repositorio.

---

## Estructura del proyecto

```plaintext
/
├── public/            # Archivos estáticos (favicon, imágenes, etc.)
├── src/               # Archivos fuente de la aplicación
│   ├── assets/        # Imágenes y recursos estáticos
│   ├── components/    # Componentes reutilizables de Svelte
│   ├── routes/        # Rutas para cada sección de la SPA
│   ├── App.svelte     # Componente raíz de la aplicación
├── package.json       # Dependencias y scripts del proyecto
└── tailwind.config.js # Configuración de Tailwind CSS
```

---

## Contribuciones

Si deseas contribuir al proyecto, siéntete libre de hacer un **fork** y enviar tus **pull requests**. Las contribuciones son siempre bienvenidas.

---

## Contacto

Puedes contactarme a través de:

- **Email**: <ernestocubo@gmail.com>
- **LinkedIn**: [linkedin.com/in/ernestocubo](https://www.linkedin.com/in/ernesto-cubo-pozo-6b0009172/)
- **GitHub**: [github.com/ernestocubo](https://github.com/ernestocubo)

---

## Licencia

Este proyecto está bajo la licencia **MIT**. Para más detalles, consulta el archivo [LICENSE](LICENSE).

---

# Ernesto Cubo's Portfolio

This is the personal portfolio of Ernesto Cubo, created with **Svelte** as the frontend framework. The project is designed as a **single-page application (SPA)**, meaning all content is loaded dynamically without requiring page reloads.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
  - [Clone the repository](#1-clone-the-repository)
  - [Install dependencies](#2-install-dependencies)
  - [Run the project locally](#3-run-the-project-locally)
- [Deployment](#deployment)
  - [Deploy on your own server](#1-deploy-on-your-own-server)
  - [Deploy on hosting services](#2-deploy-on-hosting-services)
- [Project Structure](#project-structure)
- [Contributions](#contributions)
- [Contact](#contact)
- [License](#license)

---

## Features

- **Minimalist and responsive design**: The website is designed to provide a smooth and user-friendly experience on any device.
- **Dynamic content**: The page is built dynamically to showcase my projects, certifications, research, collaborations, and more.
- **Technologies used**:  
  - **Svelte**: A modern JavaScript framework for creating fast and reactive user interfaces.
  - **Tailwind CSS**: A CSS framework used for rapid UI development with a clean, functional design.
  - **GitHub Actions**: For automating the deployment of the project to the server.

---

## Installation

To set up and run the project locally, follow these steps:

### 1. Clone the repository

```bash
git clone <https://github.com/ernestocubo/portfolio.git>
cd portfolio
```

### 2. Install dependencies

If you don't have Node.js installed, install the latest version from [here](https://nodejs.org/).

Then, install the project dependencies:

```bash
npm install
```

### 3. Run the project locally

To start a local server and see the application in action, run the following command:

```bash
npm run dev
```

This will open a local instance of the application in your browser at `http://localhost:5000`.

---

## Deployment

This project is set up for automated deployment using **GitHub Actions**. Continuous integration and continuous deployment (CI/CD) ensure that the project is always up-to-date on the server.

### 1. Deploy on your own server

If you want to deploy it on your own server, you can build the production version with:

```bash
npm run build
```

This will generate static files in the `/build` directory, ready to be served by a web server like **Nginx** or **Apache**.

### 2. Deploy on hosting services

This project can also be easily deployed on platforms like **Vercel**, **Netlify**, or **Render** by simply connecting it to your GitHub repository. These platforms provide seamless integration with Svelte and automatic deployment when you push to your repository.

---

## Project Structure

```plaintext
/
├── public/            # Static files (favicon, images, etc.)
├── src/               # Application source files
│   ├── assets/        # Images and static resources
│   ├── components/    # Reusable Svelte components
│   ├── routes/        # Routes for each SPA section
│   ├── App.svelte     # Root component of the application
├── package.json       # Project dependencies and scripts
└── tailwind.config.js # Tailwind CSS configuration
```

---

## Contributions

If you would like to contribute to the project, feel free to **fork** it and submit **pull requests**. Contributions are always welcome.

---

## Contact

You can contact me via:

- **Email**: <ernestocubo@gmail.com>
- **LinkedIn**: [linkedin.com/in/ernestocubo](https://www.linkedin.com/in/ernesto-cubo-pozo-6b0009172/)
- **GitHub**: [github.com/ernestocubo](https://github.com/ernestocubo)

---

## License

This project is licensed under the **MIT** License. For more details, please refer to the [LICENSE](LICENSE) file.
