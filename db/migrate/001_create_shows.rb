class CreateShows < ActiveRecord::Migration[5.2]
    def change
        create_table :shows do |column|
            column.string :name
            column.string :network
            column.string :day
            column.integer :rating
        end
    end
end