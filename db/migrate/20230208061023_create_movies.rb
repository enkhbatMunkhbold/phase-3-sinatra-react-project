class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :actors
      t.string :img_link
      t.string :genre
      t.integer :year
      t.text :plot
      t.string :rating
    end
  end
end
