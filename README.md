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
     ```updated_whatever.valid?```checks if it passes validations set in models file
     ```updated_whatever.errors.full_messages```displays validation error messages (the instance must be saved before this will work)
    ```reload!``` reloads rail console while inside of it 
    ```exit``` leaves rail console


TO CHECK ROUTES: ```rails routes --expanded```

TO CREATE NEW MIGRATION: ```rails g migration create_whatveryourmaking```
    this creates a migration file within the db that you can use to change schema
    at this point you can navigate to the migrate folder located within the db folder and add the table data properties within in the db folder
    once the properties have been set run : ```rails db:migrate```
ONCE THE MIGRATION HAS BEEN SUCCESSFULLY MADE NAVIGATE TO THE MODELS FILE AND CREATE A FILE NAMED THE SAME WAY YOUR TABLE WAS IN THIS CASE: ```whateveryourmaking.rb```
TO ADD A NEW COLUMN TO SCHEMA SIMPLY RUN:```rails g migration add_column_name_to_whateveryourmaking```
    within the new migration file created (found in db/migrate) add this within the change block for whatever data your adding: 
    ```add_column :whateveryourmaking, :new_data_column, :data_type``` (data will be something like text, int, float etc. )

