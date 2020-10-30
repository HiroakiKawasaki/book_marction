class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string  :reason,       null: false
      t.string  :when
      t.string  :where
      t.string  :whom
      t.string  :what,         null: false
      t.string  :how,          null: false
      t.integer :acievement_id

      t.timestamps
    end
  end
end
