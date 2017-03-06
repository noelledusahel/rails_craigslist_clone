class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.string :price, null: false
      t.integer :category_id, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end
