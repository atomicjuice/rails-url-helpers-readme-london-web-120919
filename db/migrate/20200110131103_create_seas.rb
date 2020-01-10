class CreateSeas < ActiveRecord::Migration[5.0]
  def change
    create_table :seas do |t|
      t.string :name
      t.integer :temperature
      t.text :bio
      t.string :image_url
      t.string :mood
      t.string :favorite_color
      t.string :scariest_creature
      t.boolean :has_mermaids

      t.timestamps
    end
  end
end
