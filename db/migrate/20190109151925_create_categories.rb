class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :description
      t.string :—
      t.string :no-test-framework

      t.timestamps
    end
  end
end
