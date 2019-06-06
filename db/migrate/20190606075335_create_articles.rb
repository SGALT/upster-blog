class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :category
      t.string :sub_category
      t.string :image
      t.references :user, foreign_key: true
      t.text :summary
      t.text :content

      t.timestamps
    end
  end
end
