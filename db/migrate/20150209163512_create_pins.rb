class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :url
      t.string :photo_url
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :pins, :users
  end
end
