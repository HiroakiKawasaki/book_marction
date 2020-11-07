class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :message, null: false
      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end
