class CreateCatgs < ActiveRecord::Migration[7.0]
  def change
    create_table :catgs do |t|
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
