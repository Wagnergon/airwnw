class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.integer :guests
      t.integer :beds
      t.float :baths
      t.integer :price

      t.timestamps
    end
  end
end
