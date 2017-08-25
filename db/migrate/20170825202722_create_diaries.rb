class CreateDiaries < ActiveRecord::Migration[5.0]
  def change
    create_table :diaries do |t|
      t.date :day
      t.string :description
      t.boolean :status
      t.references :challenge, foreign_key: true

      t.timestamps
    end
  end
end
