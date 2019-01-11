class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
