class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.integer :duration
      t.text :descriptio
      t.string :image_url

      t.timestamps null: false
    end
  end
end
