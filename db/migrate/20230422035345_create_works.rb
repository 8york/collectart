class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.text :image_url
      t.text :title
      t.text :height
      t.text :width
      t.text :medium
      t.belongs_to :user

      t.timestamps
    end
  end
end
