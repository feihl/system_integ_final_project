class CreateIssueds < ActiveRecord::Migration[7.0]
  def change
    create_table :issueds do |t|
      t.integer :bookid
      t.integer :userid
      t.date :issue_date
      t.date :expected_return
      t.string :status

      t.timestamps
    end
  end
end
