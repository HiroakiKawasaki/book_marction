class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string     :title,       null: false
      t.string     :author,      null: false
      t.integer    :genre_id,    null: false
      t.text       :explanation, null: false
      t.references :user,        null: false, foreign_key: true
      t.string     :reason, null: false
      t.string     :time
      t.string     :place
      t.string     :partner
      t.string     :thing, null: false
      t.string     :todo, null: false
      t.integer    :achievement_id

      t.timestamps
    end
  end
end
