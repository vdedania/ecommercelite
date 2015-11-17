SUMMARY
------------

EcommerceLite is an e-commerce platform built with Ruby on Rails. This solution includes an admin functionality to manage product and it's categories. There is a customer facing shopping experience includes viewing of products, product detail, search product by category, shopping cart and checkout. Devise gem is used to handle user authentication and authorization purpose.

System Requirement
-------------------

* Rails version :: 4.2.3

* Ruby version :: 2.2.3

* RubyGems version :: 2.4.5.1


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


Unit Testing
------------

Unit testing is performed at controller and model level using default rails unit test framework.

Controller testing criteria ::

a) ProductsController
   - To verify that website visitor has an access to view product listing page
   - To verify that website visitor can filter product by categories on listing page
   - To verify that only Admin user can add new, edit and update existing products on site.

b) CategoriesController
    - To verify that website visitor has an access to view all product categories
    - To verify that only Admin user can add new, edit and update existing product categories on site.


Models testing criteria ::

a) Cart
    - To verify the functionality add product into cart
    - To verify that system is updating only product count instead of duplicating same product muiltiple times.
    - To verify that system is able to search products within cart for shopping bag operations
    - To verify that system is able to serialize cart data into hash for session storing purpose
    - To verify that system is able to de-serialize cart data from session hash



To run test suite
```ruby
rake
```


An outline of how you tackled the project – what you prioritised etc
---------------------------------------------------------------------

P1) Setting Up Core Data models ::
    - Product, Category, Cart, Order, OrderItem and User
    - Setting up model associations
    - Unit testing of models /test/models

P2) Shopping experience ::
    - Allow user to browse through application to list of entire product, choose them and add them into cart

P3) Website look n feel ::
    - Used bootstrap saas css and javascript framework to layout forms and product listing grid.
    - Performed mobile friendly test on website pages to make sure site content are being aligned properly on mobile devices.

P4) Authentication & Authorization ::
    - Used Devise gem to add authentication and authorization functionality on the website.


Any other details you wish to make us aware of
------------------------------------------------
    - For demo purpose, by default all users are Admin user so that they can have an access to all the functionality of the website. Please use db migration script to override this settings.
