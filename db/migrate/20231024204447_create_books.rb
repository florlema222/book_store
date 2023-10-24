class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.references :author, null: false, foreign_key: true
      t.string :isbn
      t.date :date_of_publication
      t.text :review
      t.decimal :price
      t.references :publisher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
