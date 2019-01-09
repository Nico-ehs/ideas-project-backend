class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :text
      t.integer :user_id
      t.integer :idea_id
      t.string :—
      t.string :no-test-framework

      t.timestamps
    end
  end
end
