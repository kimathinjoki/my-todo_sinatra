
# My-Todos
My-Todos is a basic API built with ruby's Sinatra DSL. 

@@ -6,20 +13,29 @@ This project is a demo that shows the power of the DSL in building server-side a
## Pre-Requisites
In order to use this repository you will need the following:



- Operating System **(Windows `10+`, Linux `3.8+`, or MacOS X `10.7+`)**
- RAM >= 4GB
- Free Space >= 2GB

## Built With
This application has been built with the following tools:

![ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![sqlite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)
![bootstrap](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)


- **Ruby `v2.7.+`**
- **SQlite3 `v1.6`**
- **ActiveRecord `v7.0.4`**
- **Rake `v13.0.6`**
- **Puma `v6.1`**
- **rerun `v0.14`**
- **Sinatra `v3.0.5`**
- **Bootstrap `v5.3.0`**
- **ERB `v4.0`**

## Setup
You can setup this repository by following this manual
@@ -60,6 +76,12 @@ This application is a simple web API that allows users to:

The following routes are ready for use:
1. `/hello` - Presents a simple welcome message.
2. `/todos/create` - Add a new TODO item.
3. `/todos` - List all TODO items.
4. `/todos/update/:id` - Update an existing TODO.
5. `/todos/delete/:id` - Delete a TODO item.
6. `/view/todos` - Render a table of all todos using Bootstrap and ERB


## LICENSE
This repository is distributed under the MIT License.

## Author
* [Kimathi Njoki](https://github.com/kimathinjoki/)