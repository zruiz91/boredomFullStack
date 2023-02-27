class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :director
      t.text :description
      t.string :runtime
      t.string :image

      t.timestamps
    end
  end
end
