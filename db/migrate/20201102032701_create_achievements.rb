class CreateAchievements < ActiveRecord::Migration[6.0]
  def change
    create_table :achievements do |t|

      t.timestamps
    end
  end
end
