class CreateProfils < ActiveRecord::Migration[5.1]
  def change
    create_table :profils do |t|
      t.string :username
      t.integer :level
      t.integer :age
      t.string :gender
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
