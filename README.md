# Houses Admin API

## Description 

This project its a functional API or could work as a template for an API. The propuse of this API its to manage information about RealState, the API have the  next features:

- The User table have the next structure: E-mail, Password & Password Confirmation.
- Registration System, you can create new Users from the API with a simple request.
- Login System, this API have a proper login system, you need to be logged in to modify anything on the API
- You can create, delete and get all propertys or get just the properties that you create, every property have the next colums: Title, About, Category, Price and Post Date.
- You are able to save any house on the table Favorites also you can get all your Favorite houses and delete a house from it.  

## Built With

- Ruby v2.7.0
- Ruby on Rails v5.2.4
- RSpec
- DataFaker

## Live Demo


## Getting Started

To get a local copy up and running follow these simple example steps.

### Clone the project 

```
    git clone https://github.com/JuanPabloGil/houses-api.git
```
### Download the project 

```
    https://github.com/JuanPabloGil/houses-api/archive/api.zip
```

### Prerequisites

Ruby: 2.6.3
Rails: 5.2.3
Postgres: >=9.5

### Setup

Instal gems with:

```
    bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```


### Usage

Start server with:

```
    rails server   
```

If you want to choose another port you can use the next command (remplace the XXXX with you selected port )

```
    rails s -p XXXX

```

Open `http://localhost:3000/` in your browser.

### Run tests

```
    rspec --format documentation
```

### Deployment


#### Heroku

  Create a Heroku App

  ```
      $ heroku create
  ```
  Push the changes to the Heroku App

  ```
      $ git push heroku master
  ```

  Make a migration to the Heroku App

  ```
      $ heroku run rails db:migrate
  ```


## Author

👤 **Juan Pablo Gil**

- [GitHub](https://github.com/JuanPabloGil )
- [@LinkedIn](https://www.linkedin.com/in/juan-pablo-gil-1321a515a/)
- jpablomgil@gmail.com


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!


