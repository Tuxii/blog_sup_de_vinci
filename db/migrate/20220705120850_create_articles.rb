class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.integer :likes, default: 0

      t.timestamps
    end
  end
end