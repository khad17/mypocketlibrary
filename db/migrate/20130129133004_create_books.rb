class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :ISBN
      t.string :Title
      t.string :AuthorName
      t.string :AuthorFirstname
      t.text :URI
      t.text :Summary
      t.text :Image
      
      t.timestamps
    end
  end
end
