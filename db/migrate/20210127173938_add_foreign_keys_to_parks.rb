class AddForeignKeysToParks < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :parks, :trails
    add_foreign_key :reviews, :hikers
  end
end
