# README
TO USE RAILS CONSOLE: ```rails c```
    to check crud functionality: 
    ```Whatevermodel.all``` grabs all of the data table
    ```Whatevermodel.first``` grabs the first entry in the data table
    ```Whatevermodel.last``` grabs the last entry in the data table
    ```Whatevermodel.first``` grabs the first entry in the data table
    ```Whatevermodel.create(datakey1: 'kjfhdsa', datakey2:'fdksjh'``` creates a new data entry
    ```updated_whatever = Whatevermodel.first.update(datakey1:'updated value'``` updates the first variable
     ```updated_whatever.save``` saves the newly updated variable to the database
     ```updated_whatever.destroy``` deletes user from the databse
    ```exit``` leaves rail console


TO CHECK ROUTES: ```rails routes --expanded```

TO CREATE NEW MIGRATION: ```rails g migration <create_whatveryourmaking>```
    this creates a migration file within the db that you can use to change schema
    at this point you can navigate to the migrate folder located within the db folder and add the table data properties within in the db folder
    once the properties have been set run : ```rails db:migrate```
ONCE THE MIGRATION HAS BEEN SUCCESSFULLY MADE NAVIGATE TO THE MODELS FILE AND CREATE A FILE NAMED THE SAME WAY YOUR TABLE WAS IN THIS CASE: ```whateveryourmaking.rb```


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# rails_practice
