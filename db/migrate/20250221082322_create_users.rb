class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :pseudo
      t.string :photo
      t.string :description

      t.timestamps
    end
  end
end
