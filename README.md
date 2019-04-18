# Project Title

School project aiming at the creation of a classified ad site such as for example: https://www.leboncoin.fr/

## Production site

Deploy whith heroku


https://app-ruby-listing-al-ap.herokuapp.com


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

## Authors

* **Alexis Lauradoux** - [AlexisLauradoux](https://github.com/AlexisLauradoux)
* **Alban Pierson** - [Zalbani](https://github.com/Zalbani)