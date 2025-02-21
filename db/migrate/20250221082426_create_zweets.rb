class CreateZweets < ActiveRecord::Migration[8.0]
  def change
    create_table :zweets do |t|
      t.text :content
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
