class CreateRestaurantTypes < ActiveRecord::Migration
  def change
    create_table :restaurant_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
