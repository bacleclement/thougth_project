class CreateMoodChecks < ActiveRecord::Migration[5.1]
  def change
    create_table :mood_checks do |t|
      t.references :profil, foreign_key: true
      t.string :situation
      t.string :type
      t.text :thougth
      t.string :emotion
      t.integer :emotion_level
      t.string :physiological
      t.text :negative_proof
      t.text :positive_proof
      t.datetime :created_at

      t.timestamps
    end
  end
end
