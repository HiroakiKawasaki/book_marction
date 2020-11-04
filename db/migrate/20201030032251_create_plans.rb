class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string  :reason, null: false
      t.string  :time
      t.string  :place
      t.string  :partner
      t.string  :thing, null: false
      t.string  :todo, null: false
      t.integer :achievement_id
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
