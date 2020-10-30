class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string  :reason,       null: false
      t.string  :tine
      t.string  :place
      t.string  :partner
      t.string  :thing,         null: false
      t.string  :todo,          null: false
      t.integer :acievement_id

      t.timestamps
    end
  end
end
