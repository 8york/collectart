class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.text :image
      t.text :title
      t.text :height
      t.text :width
      t.text :medium
      t.text :user_id

      t.timestamps
    end
  end
end
