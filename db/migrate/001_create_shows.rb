class CreateShows < ActiveRecord::Migration[5.2]
    def change
        create_table :shows do |t|
            t.string :name
            t.string :network
            t.string :day
            t.integer :rating

            t.timestamps null: false
        end
    end
end