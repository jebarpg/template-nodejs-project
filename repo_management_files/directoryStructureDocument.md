https://dev.to/vyan/how-to-structure-your-backend-code-in-nodejs-expressjs-2bdd?context=digest

src/
The root source directory of your project.

src/bin
The bin directory typically contains scripts for starting your web server. These scripts can be used to set environment variables or manage different environments (e.g., development, production).

src/config
The config directory holds configuration files for your application, such as database connections, server settings, and environment variables.

src/controllers
Controllers contain the logic for handling incoming requests and generating responses. Each file in the controllers directory typically corresponds to a different part of your application (e.g., customers, products).

src/middleware
Middleware functions are used to process requests before they reach the controllers. They can handle tasks like authentication, logging, and request validation.

src/models
Models define the structure of your data and handle interactions with the database. Each model file typically corresponds to a different data entity (e.g., Customer, Product).

src/routes
Routes define the paths to different parts of your application and map them to the appropriate controllers.

src/public
The public directory contains static files like CSS, JavaScript, and images that are served directly to the client.

src/views
Views are templates that render the HTML for the client. Using a templating engine like EJS, Pug, or Handlebars, you can generate dynamic HTML.

src/utils
Utility functions and helper modules are stored in the utils directory. These functions perform common tasks like validation and formatting that are used throughout the application.

test/bin
test/configs
test/controllers
test/middleware
test/models
test/plugins
test/routes
test/utils
test/views
node_modules
The node_modules directory contains all the dependencies your project needs. This directory is managed by npm (or yarn) and includes packages installed from the npm registry.
