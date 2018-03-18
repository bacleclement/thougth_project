class CreateActions < ActiveRecord::Migration[5.1]
  def change
    create_table :actions do |t|
      t.string :type
      t.references :mood_check, foreign_key: true
      t.string :title
      t.string :hour
      t.datetime :created_at
      t.text :description

      t.timestamps
    end
  end
end
