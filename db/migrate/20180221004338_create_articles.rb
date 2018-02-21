class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.references :category, index: true
      t.boolean :active

      t.timestamps
    end
  end
end
