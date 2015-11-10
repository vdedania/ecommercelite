SUMMARY
------------

EcommerceLite is an e-commerce platform built with Ruby on Rails. This solution includes an admin functionality to manage product and it's categories. There is a customer facing shopping experience includes viewing of products, product detail, search product by category, shopping cart and checkout. Devise gem is used to handle user authentication and authorization purpose.


Installation
------------

Clone the Git repo

```shell
git clone git://github.com/vdedania/ecommercelite.git
```

Verify rails version and install the gem dependencies

```ruby
sudo gem install rails
```

```shell
cd ecommercelite
bundle install
```
Setup db and schema

```ruby
rake db:create
rake db:migrate
```

Start the server
```ruby
rails server
```

http://localhost:3000

