class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :work, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
