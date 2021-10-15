class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.string :category
      t.string :cook_time

      t.timestamps
    end
  end
end
