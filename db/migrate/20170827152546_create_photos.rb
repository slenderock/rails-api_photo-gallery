class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :url
      t.string :category
      t.text :caption

      t.timestamps
    end
  end
end
