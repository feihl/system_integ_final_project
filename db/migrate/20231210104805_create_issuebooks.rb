class CreateIssuebooks < ActiveRecord::Migration[7.0]
  def change
    create_table :issuebooks do |t|
      t.integer :bookid
      t.integer :userid
      t.datetime :issue_date_time
      t.datetime :return_date_time
      t.string :status
      t.datetime :expected_date_time

      t.timestamps
    end
  end
end
