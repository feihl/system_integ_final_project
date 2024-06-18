class CreateManBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :man_books do |t|
      t.integer :bookid
      t.integer :categoryid
      t.integer :authorid
      t.integer :rackid
      t.string :name
      t.string :picture
      t.integer :publisherid
      t.integer :isbn
      t.integer :no_of_copy
      t.string :status
      t.datetime :added_on
      t.datetime :updated_on

      t.timestamps
    end
  end
end
