# how to properly add more colums to a table when working with a larger team.
class AddTimestampsToArticles < ActiveRecord::Migration[6.0]
  def change
    # ORDER: :table_your_adding_to, :table_colum_name, :column_data_type
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
