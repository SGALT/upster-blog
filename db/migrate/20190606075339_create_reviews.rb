class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
