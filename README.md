# Project ads aka "leboncoin"

School project aiming at the creation of a classified ad site such as for example: https://www.leboncoin.fr/

## Production site

Deploy with heroku  
* https://app-ruby-listing-al-ap.herokuapp.com

## Getting Started

Start serveur

```
rails s
```

### Some Help

Modification of the database

```
rails g migration 

rails db:migrate
```

Data loading
```
rails db:seed
```

Create database + data loading
```
rails db:setup
```

Connection as Admin
```
Mail : admin@mail.com
Password : password
```

Connection as User
```
Mail : user@mail.com
Password : password
```
### UseFull link

* [Spec](https://s3.eu-central-1.amazonaws.com/gbarillot-ynov-ruby/files/specs_listings.pdf) - Project specification
* [Bootstrap](https://getbootstrap.com/docs/4.2/getting-started/introduction/) - Bootstrap Documentation

* [Routing](https://edgeguides.rubyonrails.org/routing.html) - RailsGuides
* [Devise](https://github.com/plataformatec/devise) - Gem Devise Wiki 
* [Rails Admin](https://github.com/sferik/rails_admin) - Gem Rails Admin GitHub 


### Prerequisites

Work with PostgreSQL database

### Install & lunch


```
bundle install

rails db:setup

rails s
```

## Running the tests

Run test

```
spring rails test
```
## API Documentation

This part describe all interaction you can have whith the API

### Request possible Without connection token

You can access the list of ads,

 ```
 https://app-ruby-listing-al-ap.herokuapp.com/api/v1/annonces
 ```
 
 And the list of categories
 
  ```
  https://app-ruby-listing-al-ap.herokuapp.com/api/v1/categories
  ```

### Getting a connection token

to have a connection token you just have to connect with your account by sending a post request

For example
  ```
  https://app-ruby-listing-al-ap.herokuapp.com/api/auth?email=admin@mail.com&password=password
  ```
  
  This request will send you a connection token
  
       "success": true,
       "token": "316ff99f-2657-4329-b585-c5d2af96a1ab"
    
  You __must__ keep this token that you can pass during the next requests in the `header` with the key: `TOKEN`


### Request possible With connection token
You can access to account information,

```
https://app-ruby-listing-al-ap.herokuapp.com/api/v1/account
```
messages receive

```
https://app-ruby-listing-al-ap.herokuapp.com/api/v1/msgreceive
```

and all messages send
```
https://app-ruby-listing-al-ap.herokuapp.com/api/v1/msgsent
```

You can also create an ads  
The params require are : category_id, content, price and title
```
https://app-ruby-listing-al-ap.herokuapp.com/api/v1/create-annonce?category_id=2&content=I'm the content&price=100&title=Test
```

You can send a message for an ads  
The params require are : annonce_id and message
```
https://app-ruby-listing-al-ap.herokuapp.com/api/v1/create-message?annonce_id=1&message=Hello i'm a new message
```
## Authors

* **Alexis Lauradoux** - [AlexisLauradoux](https://github.com/AlexisLauradoux)
* **Alban Pierson** - [Zalbani](https://github.com/Zalbani)