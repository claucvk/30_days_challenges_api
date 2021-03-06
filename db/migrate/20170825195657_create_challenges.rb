class CreateChallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :challenges do |t|
      t.belongs_to :user, index: true
      t.string :name
      t.string :goal
      t.date :start_day
      t.date :end_day
      t.boolean :status
      #t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
